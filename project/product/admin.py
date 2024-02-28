from django.contrib import admin
from .import models
# Register your models here.
from django.utils.crypto import get_random_string

class productAdmin(admin.ModelAdmin):
    # # readonly_fields = ['slug'] #By using this module we can make that part inaccessible and only for display.
    # prepopulated_fields = {
    #     'slug': ['title']
    # } #It is a dictionary that specifies which of these fields should be defined, that is, based on what is entered at the moment, change the same in the field.
    list_filter = ['category', 'is_active']
    list_display = ['title', 'price', 'is_active', 'is_delete']  #Display the materials we want in the Django admin
    list_editable = ['price', 'is_active']
    prepopulated_fields={'slug': ['title'] , 'slug_en': ['title_en'], 'slug_fa': ['title_fa']}


class ProductCategoryAdmin(admin.ModelAdmin):
    list_display = ['title', 'url_title']  #Display the materials we want in the Django admin
    prepopulated_fields={'url_title': ['title'] , 'url_title_en': ['title_en'], 'url_title_fa': ['title_fa']}
class product_brandAdmin(admin.ModelAdmin):
    list_display = ['title', 'url_title']  #Display the materials we want in the Django admin
    prepopulated_fields={'url_title': ['title'] , 'url_title_en': ['title_en'], 'url_title_fa': ['title_fa']}
admin.site.register(models.Product, productAdmin)
admin.site.register(models.ProductCategory,ProductCategoryAdmin)
admin.site.register(models.ProductTag)
admin.site.register(models.product_brand , product_brandAdmin)
admin.site.register(models.ProductVisit)
admin.site.register(models.ProductGallery)
admin.site.register(models.ProductColor)
admin.site.register(models.ProductPoint)
admin.site.register(models.Rating)

