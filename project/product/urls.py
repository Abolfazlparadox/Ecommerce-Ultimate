from django.urls import path
from .import views
# from .views import home, RegisterView , profile
from django.contrib.auth import views as auth_views
# from product.views import CustomLoginView  
# from product.forms import LoginForm
from django.urls import path , re_path



urlpatterns = [
    path('', views.ProductListView.as_view(), name='product-list'),
    re_path(r'cat/(?P<cat>[-\w]+)', views.ProductListView.as_view(), name='product-categories-list'),
    re_path(r'brand/(?P<brand>[-\w]+)', views.ProductListView.as_view(), name='product-list-by-brands'),
    path('search/', views.search_view, name='search_view'),
    # path('product-favorite', views.AddProductFavorite.as_view(), name='product-favorite'),
    re_path(r'(?P<slug>[-\w]+)', views.ProductDetailView.as_view(), name='product-detail'),
    # path('<slug:slug>', views.ProductDetailView.as_view(), name='product-detail'),
    # path('', views.product_list, name='product-list'),
    # path('<slug:slug>', views.product_detail, name='product-detail'),
]