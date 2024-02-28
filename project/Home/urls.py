from django.urls import path
from . import views
from .views import MyModelSearchView


urlpatterns = [
    path('', views.HomeView.as_view(), name='home_page'),
    path('search/', MyModelSearchView, name='my-model-search'),
    # path('search/', views.search, name='search'),
    path('about-us', views.AboutView.as_view(), name='about_page'),
    #path('', views.index_page , name='home_page'),
    #path('contact-us/' , views.contact_page),
    # path('site-header' , views.site_header_partial , name = 'site_header_partial')
]