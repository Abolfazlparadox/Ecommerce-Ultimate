from django.db.models import Count
from django.shortcuts import render
from django.views.generic.base import TemplateView
from pages.models import SiteBanner
from pages.models import SiteSetting , FooterLinkBox , Slider
from utils.convertors import group_list
from product.models import Product , ProductCategory
from utils.convertors import group_list
from django.db.models import Sum
from Cart.models import Cart , CartDetail
from django.http import HttpRequest, HttpResponse, JsonResponse , Http404
from django.template.loader import render_to_string
from django.shortcuts import get_object_or_404
from utils.my_decorators import permission_checker_decorator_factory_for_user
from django.utils.decorators import method_decorator
from account.models import User
from product.filters import MyModelFilter

# Create your views here.

#def index_page(request):
    #return render(request, 'home_module/index_page.html')
#We used the bottom class as the base view class and above we used the base view function
# class HomeView(View):
#     def get (self , request):
#         return render(request, 'home_module/index_page.html')

#To use a context in the base view class of the template view, we need to override a function called Get Context Data.
#And we must use the return super().get_context_data(**kwargs)key argument command
#If we don't want to make a change, we enter it manually, but if we want to make a change on it, we do it as follows
#Then we put that command in a variable called context and consider a key for that context and put the desired text or the desired value in it.


def MyModelSearchView(request):
    query = request.GET.get('search', '')
    category_id = request.GET.get('category', '')
    my_filter = MyModelFilter(request.GET, queryset=Product.objects.all())
    category = my_filter.form.fields['category'].choices
    results = my_filter.qs
    query = request.GET.get('q', '')

    if query:
        results = results.filter(title__icontains=query)

    if category_id:
        results = results.filter(category__id=category_id)


    context = {
        'query': query,
        'category_id': category_id,
        'products': results,
        'category' :category
    }

    return render(request, 'product_module/product_list.html', context)




class HomeView(TemplateView):
    template_name = 'home_module/index_page.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        # context['data'] = 'this is data in home page'
        # context['message'] = 'this is message in home page'
        sliders = Slider.objects.filter(is_active=True)
        context['sliders'] = sliders
        latest_product = Product.objects.filter(is_active=True,is_delete=False).order_by('-id')[:12]
        most_visit_products = Product.objects.filter(is_active=True, is_delete=False).annotate(visit_count=Count('productvisit')).order_by('-visit_count')[:12]

        context ['latest_products'] = group_list(latest_product)
        context['most_visit_products'] = group_list(most_visit_products)

        categories = list(ProductCategory.objects.annotate(products_count=Count('product_categories')).filter(is_active=True, is_delete=False, products_count__gt=0)[:6])
        categories_products = []
        for category in categories:
            item = {
                'id': category.id,
                'title': category.title,
                'products': list(category.product_categories.all()[:4])
            }
            categories_products.append(item)

        context['categories_products'] = categories_products
        # annotate
        most_bought_products = Product.objects.filter(cartdetail__cart__is_paid=True).annotate(cart_count=Sum(
            'cartdetail__count'
        )).order_by('-cart_count')[:12]
        # for product in most_bought_products :
        #     print (f'{product.cart_count} - {product.title}')
        context['most_bought_products'] = group_list(most_bought_products)


        return context




# def search(request):
#     if request.method == 'POST':
#         q_name=request.POST.get('input_search')
#         print(f'{q_name}')
#         if q_name:
#             results=Product.objects.filter(title__icontains=q_name)
#             print(f'{results}') 
#             products = results 
#             return render(request, 'product/product_module/product', {'products':products})



def site_header_component(request):
        
    current_user = request.user.id
    if request.user.is_authenticated:
        # ابتدا باید کاربر جاری را به دست آورید
        # سپس سبد خرید کاربر را به دست آورید
        user_carts = Cart.objects.filter(user = current_user, is_paid=False).first()
        if user_carts is not None:

            user_open_cart , created =Cart.objects.prefetch_related('cartdetail_set').get_or_create(is_paid=False, user_id=request.user.id)
            count = CartDetail.objects.filter(cart=user_carts).count()
            total_amount = user_open_cart.calculate_total_price()
            current_user = User.objects.filter(id=request.user.id).first()
            setting: SiteSetting = SiteSetting.objects.filter(is_main_setting=True).first()
            my_filter = MyModelFilter(request.GET, queryset=Product.objects.all())
            category = my_filter.form.fields['category'].choices
            context = {
                'category' :category ,
                'current_user': current_user ,
                'cart': user_open_cart,
                'sum': total_amount,
                'site_setting': setting,
                'count': count
            }
            return render(request, 'shared/site_header_component.html', context)
        else:
            current_user = User.objects.filter(id=request.user.id).first()
            setting: SiteSetting = SiteSetting.objects.filter(is_main_setting=True).first()
            my_filter = MyModelFilter(request.GET, queryset=Product.objects.all())
            category = my_filter.form.fields['category'].choices
            context = {
                'category' :category ,
                'current_user': current_user ,
                'site_setting': setting,
            }
            return render(request, 'shared/site_header_component.html', context)
    else:
            current_user = User.objects.filter(id=request.user.id).first()
            setting: SiteSetting = SiteSetting.objects.filter(is_main_setting=True).first()
            my_filter = MyModelFilter(request.GET, queryset=Product.objects.all())
            category = my_filter.form.fields['category'].choices
            context = {
                'category' :category ,
                'current_user': current_user ,
                'site_setting': setting,
            }
            return render(request, 'shared/site_header_component.html', context)
    



#Using Django's partial or component feature, we can control our pages automatically
def site_footer_component(request):
    setting: SiteSetting = SiteSetting.objects.filter(is_main_setting=True).first()
    footer_link_boxes = FooterLinkBox.objects.all()
    for item in footer_link_boxes:
        item.footerlink_set
    context = {
        'site_setting': setting , 
        'footer_link_boxes' : footer_link_boxes
    }
    return render (request ,'shared/site_footer_component.html' , context)


class AboutView(TemplateView):
    template_name = 'home_module/about_page.html'
    def get_context_data(self, **kwargs):
        context = super(AboutView, self).get_context_data(**kwargs)
        site_setting: SiteSetting = SiteSetting.objects.filter(is_main_setting=True).first()
        context['site_setting'] = site_setting
        context['banners'] = SiteBanner.objects.filter(is_active=True , position__iexact =SiteBanner.SiteBannerPosition.about_us)
        return context
    
