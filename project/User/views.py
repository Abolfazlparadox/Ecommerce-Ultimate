from typing import Any
from django.http.response import HttpResponse as HttpResponse
from django.shortcuts import render , redirect
from django.views.generic import TemplateView, ListView
from django.http import HttpRequest, HttpResponse, JsonResponse , Http404
from django.views.generic import View
from .forms import EditProfileModelForm , ChangePasswordForm
from account.models import User
from django.contrib.auth import  logout
from django.urls import reverse
from Cart.models import Cart , CartDetail
from django.template.loader import render_to_string
from django.contrib.auth.decorators import login_required 
from django.utils.decorators import method_decorator





# # Create your views here.


# @method_decorator(login_required , name='dispatch')
class UserPanelDashboardPage(TemplateView):
    
    template_name = 'User/user_panel_dashboard_page.html'
    def get(self, request: HttpRequest, *args, **kwargs):
        current_user = User.objects.filter(id=request.user.id).first()
        context = {'current_user': current_user}
        return self.render_to_response(context)


class UserProfilePage(View):
        
    def get (self,request:HttpRequest):
        current_user = User.objects.filter(id=request.user.id).first()
        context = {
            'current_user' : current_user
        }
        return render (request , 'User/profile_page.html' , context )

class EditUserProfilePage(View):
    #point1 : go to code.txt
    #point2 : go to code.txt
    def get (self,request:HttpRequest):
        current_user = User.objects.filter(id=request.user.id).first()
        edit_form = EditProfileModelForm(instance=current_user)
        # edit_form = EditProfileModelForm(initial={
        #     'first_name' : current_user.first_name,
        #     'last_name' : current_user.last_name,
        #     'email' : current_user.email,
        #     'avatar' : current_user.avatar,
        #     'address' : current_user.address,
        # })
        context = {
            'form' : edit_form,
            'current_user' : current_user
        }
        return render (request , 'User/edit_profile_page.html' , context )
    def post (self,request:HttpRequest):
        current_user = User.objects.filter(id=request.user.id).first()
        edit_form = EditProfileModelForm(request.POST , request.FILES , instance=current_user)
        if edit_form.is_valid():
            edit_form.save(commit=True)
        
            
        context = {
            'form' : edit_form, 
            'current_user' : current_user
        }
        return render (request , 'User/edit_profile_page.html' , context )

class ChangePasswordPage(View):
    def get(self, request: HttpRequest):
        context = {
            'form': ChangePasswordForm()
        }
        return render(request, 'User/change_password_page.html', context)

    def post(self, request: HttpRequest):
        form = ChangePasswordForm(request.POST)
        if form.is_valid():
            current_user: User = User.objects.filter(id=request.user.id).first()
            if current_user.check_password(form.cleaned_data.get('current_password')):
                current_user.set_password(form.cleaned_data.get('password'))
                current_user.save()
                logout(request)
                return redirect(reverse('login_page'))
            else:
                form.add_error('current_password', 'کلمه عبور فعلی اشتباه می باشد')

        context = {
            'form': form
        }
        return render(request, 'User/change_password_page.html', context)




class MyShopping(ListView):
    model = Cart
    template_name = 'User/user_shopping.html'

    def get_queryset(self):
        queryset = super().get_queryset()
        request: HttpRequest = self.request
        queryset = queryset.filter(user_id=request.user.id, is_paid=True)
        return queryset


@login_required(login_url='login_page')
def user_panel_menu_component(request: HttpRequest):
    current_user: User = User.objects.filter(id=request.user.id).first()
    context = {'current_user': current_user}
    return render(request , 'User/components/user_panel_menu_component.html' , context)

@login_required(login_url='login_page')
def user_cart(request : HttpRequest):
    user_open_cart , created =Cart.objects.prefetch_related('cartdetail_set').get_or_create(is_paid=False, user_id=request.user.id)
    
    total_amount = user_open_cart.calculate_total_price()
    
    
    context = {
        'cart' : user_open_cart ,
        'sum' : total_amount
    }
    return render(request , 'User/user_cart.html' , context)

@login_required(login_url='login_page')
def remove_cart_detail(request):
    
    detail_id = request.GET.get('detail_id')
    if detail_id is None :
        return JsonResponse ({
            'status' : 'not_found_detail_id'
        })

    deleted_count , deleted_dict = CartDetail.objects.filter(id=detail_id , cart__is_paid=False , cart__user_id =request.user.id).delete()

    if deleted_count == 0 :
        return JsonResponse({
            'status' : 'detail_not_found'
        })

    user_open_cart , created =Cart.objects.prefetch_related('cartdetail_set').get_or_create(is_paid=False, user_id=request.user.id)
    total_amount = user_open_cart.calculate_total_price()
    
    
    context = {
        'cart' : user_open_cart ,
        'sum' : total_amount
    }
    return JsonResponse({
        'status': 'success',
        'body': render_to_string('User/user_cart_content.html', context)
    })
@login_required(login_url='login_page')
def change_order_detail_count(request: HttpRequest):
    detail_id = request.GET.get('detail_id')
    state = request.GET.get('state')
    if detail_id is None or state is None:
        return JsonResponse({
            'status': 'not_found_detail_or_state'
        })
    
    cart_detail = CartDetail.objects.filter(id=detail_id , cart__is_paid=False , cart__user_id =request.user.id).first()

    if cart_detail is None:
        return JsonResponse({
            'status': 'detail_not_found'
        })
    if state == 'increase':
        cart_detail.count += 1
        cart_detail.save()
    elif state == 'decrease':
        if cart_detail.count == 1:
            cart_detail.delete()
        else:
            cart_detail.count -= 1
            cart_detail.save()
    else:
        return JsonResponse({
            'status': 'state_invalid'
        })
    

    user_open_cart , created =Cart.objects.prefetch_related('cartdetail_set').get_or_create(is_paid=False, user_id=request.user.id)
    total_amount = user_open_cart.calculate_total_price()
    
    
    context = {
        'cart' : user_open_cart ,
        'sum' : total_amount
    }
    return JsonResponse({
        'status': 'success',
        'body': render_to_string('User/user_cart_content.html', context)
    })



@login_required(login_url='login_page')
def my_shopping_detail(request: HttpRequest, cart_id):
    cart = Cart.objects.prefetch_related('cartdetail_set').filter(id=cart_id, user_id=request.user.id).first()
    if cart is None:
        raise Http404('سبد خرید مورد نظر یافت نشد')

    return render(request, 'User/user_shopping_detail.html', {
        'cart': cart ,
    })


