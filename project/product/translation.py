from modeltranslation.translator import TranslationOptions , register
from .models import Product , ProductCategory , product_brand , ProductPoint , ProductColor
@register(Product)
class product_translation (TranslationOptions):
    fields = ['title' , 'short_description' , 'description' , 'slug']
@register(ProductCategory)
class product_translation (TranslationOptions):
    fields = ['title' , 'url_title']
@register(product_brand)
class product_translation (TranslationOptions):
    fields = ['title' , 'url_title']
@register(ProductPoint)
class product_translation (TranslationOptions):
    fields = ['strong_point' , 'weak_point']
# @register(ProductColor)
# class product_translation (TranslationOptions):
#     fields = ['name']