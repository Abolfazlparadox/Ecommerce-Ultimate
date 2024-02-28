from django.urls import path
from . import views

urlpatterns = [
    path ('' , views.UserPanelDashboardPage.as_view(),name= 'user_panel_dashboard'),
    path ('edit-profile' , views.EditUserProfilePage.as_view(),name= 'edit_profile_page'),
    path ('profile' , views.UserProfilePage.as_view(),name= 'profile_page'),
    path ('change-pass' , views.ChangePasswordPage.as_view(),name= 'change_password_page'),
    path ('user-cart' , views.user_cart,name= 'user_cart_page'),
    path ('my-shopping' , views.MyShopping.as_view(),name= 'user_shopping_page'),
    path('my-shopping-detail/<cart_id>', views.my_shopping_detail, name='user_shopping_detail_page'),
    path ('remove-cart-detail' , views.remove_cart_detail,name= 'remove_cart_detail_ajax'),
    path ('change-cart-detail' , views.change_order_detail_count,name= 'remove_cart_detail_count_ajax'),
]
