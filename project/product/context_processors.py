
from pickle import TRUE
from .models import Product
from django.db.models import Q


def new_products_obj(request):
    new_products = Product.objects.all().filter(
        is_active=True)[0:3]
    # product_image_sale_obj = Product.objects.filter(
    #     product_image_sale__isnull=False)[0:1]
    # print(product_image_sale_obj)
    return {
        'new_products': new_products,
        # 'product_image_sale_obj': product_image_sale_obj,
    }
