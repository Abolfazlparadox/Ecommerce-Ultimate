from typing import Any
from django.db.models.query import QuerySet
from django.shortcuts import render, redirect , get_object_or_404
from django.http import HttpResponse , Http404 , HttpRequest
from django.db.models import Count
from django.http import HttpRequest
from django.shortcuts import render, redirect
from django.views.generic import ListView, DetailView
from django.views.generic.base import View
from pages.models import SiteBanner
from utils.http_services import get_client_ip
from utils.convertors import group_list
from .models import Product, ProductCategory, product_brand, ProductVisit , ProductGallery

# from django.db.models import Avg  , Min # use for average

#Instead of using template views, we can use list views.
#The structure of the same structure and our model is passed to it as the model itself or the name of the model.
#When we use the list view, the context is known as the list object by default. We can use the command code of the context object to give it the name we want.
#Pass a certain amount of something to our own page using the get query function and use a variable and receive the query.


from django.shortcuts import render
from django_filters.views import FilterView
from .models import Product
from django.shortcuts import render
from .models import Product
from .filters import MyModelFilter




def search_view(request):
    query = request.GET.get('search', '')
    category_id = request.GET.get('category', '')
    my_filter = MyModelFilter(request.GET, queryset=Product.objects.all())
    category = my_filter.form.fields['category'].choices
    results = my_filter.qs
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

    return render(request, 'my_model_search.html', context)
    
# class MyModelSearchView(FilterView):
#     model = Product
#     template_name = 'my_model_search.html'
#     filterset_class = MyModelFilter





class ProductListView(ListView):
    template_name = 'product_module/product_list.html'
    model = Product
    context_object_name = 'products'
    ordering = ['-price']
    paginate_by = 3

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super(ProductListView, self).get_context_data()
        query = Product.objects.all()
        product: Product = query.order_by('-price').first()
        db_max_price = product.price if product is not None else 0
        context['db_max_price'] = db_max_price
        context['start_price'] = self.request.GET.get('start_price') or 0
        context['end_price'] = self.request.GET.get('end_price') or db_max_price
        context['banners'] = SiteBanner.objects.filter(is_active=True , position__iexact =SiteBanner.SiteBannerPosition.product_list)
        return context
    
    def get_queryset(self):
        print('query_set')
        query = super(ProductListView, self).get_queryset()
        category_name = self.kwargs.get('cat')
        brand_name = self.kwargs.get('brand')
        request: HttpRequest = self.request
        start_price = request.GET.get('start_price')
        end_price = request.GET.get('end_price')
        if start_price is not None:
            query = query.filter(price__gte=start_price)

        if end_price is not None:
            query = query.filter(price__lte=end_price)

        if brand_name is not None:
            # Product,object.filter(brand__url_title__iexact=brand_name)
            query = query.filter(brand__url_title__iexact=brand_name)

        if category_name is not None:
            # Product.objects.filter(category__url_title__iexact=category_name)
            query = query.filter(category__url_title__iexact=category_name)
        return query
        # print(self.kwargs)

    # def get_queryset(self):
    #     base_query = super(ProductListView, self).get_queryset()
    #     data = base_query.filter(is_active=True)
    #     return data

# class ProductListView(TemplateView):
#     template_name = 'product_module/product_list.html'


#     def get_context_data(self, **kwargs):
#         products = Product.objects.all().order_by('-price')[:5]
#         context = super(ProductListView,self).get_context_data()
#         context['products'] = products
#         return context



class ProductDetailView(DetailView):
    template_name = 'product_module/product_detail.html'
    model = Product

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        loaded_product = self.object
        request = self.request
        favorite_product_id = request.session.get("product_favorites")
        context['is_favorite'] = favorite_product_id == str(loaded_product.id)
        context['banners'] = SiteBanner.objects.filter(is_active=True , position__iexact =SiteBanner.SiteBannerPosition.product_detail)
        galleries = list(ProductGallery.objects.filter(product_id=loaded_product.id).all())
        galleries.insert(0, loaded_product)
        context['product_galleries_group'] = group_list(galleries, 3)
        #The exclude command removes the items we don't need
        context['related_products'] = group_list(list(Product.objects.filter(brand_id=loaded_product.brand_id).exclude(pk=loaded_product.id).all()[:12]), 3)
        user_ip = get_client_ip(self.request)
        user_id = None
        if self.request.user.is_authenticated:
            user_id = self.request.user.id

        has_been_visited = ProductVisit.objects.filter(ip__iexact=user_ip, product_id=loaded_product.id).exists()

        if not has_been_visited:
            new_visit = ProductVisit(ip=user_ip, user_id=user_id, product_id=loaded_product.id)
            new_visit.save()
        return context
# class AddProductFavorite(View):
#     def post(self, request):
#         product_id = request.POST["product_id"]
#         product = Product.objects.get(pk=product_id)
#         request.session["product_favorites"] = product_id
#         return redirect(product.get_absolute_url())
        


def product_categories_component(request: HttpRequest):
    product_categories = ProductCategory.objects.filter(is_active = True , is_delete = False)
    context = {
        'categories' : product_categories
    }
    return render (request , 'product_module/components/product_categories_component.html' , context)

def product_brands_component(request: HttpRequest):
    #point3 = go to code.txt
    product_brands = product_brand.objects.annotate(products_count=Count('product')).filter(is_active=True)
    context = {
        'brands': product_brands
    }
    return render(request, 'product_module/components/product_brands_component.html', context)



