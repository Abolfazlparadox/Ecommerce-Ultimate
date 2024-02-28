# from django.db.models.signals import pre_save
# from django.dispatch import receiver
# from . models import Product
# from django.utils.text import slugify


# @receiver (pre_save , sender = Product)
# def create_slug(sender, instance ,  *args, **kwargs):
#     if not instance.slug:
#         instance.slug = create_uniq_slug(instance)
# 

# def create_uniq_slug (instance , newslug=None):
#     if newslug is not None : 
#         slug=newslug
#     else:
#         slug = slugify(instance.title,allow_unicode=True)

#     instanceClass = instance.__class__
#     qs = instanceClass.objects.filter(slug=slug)
#     if qs.exists():
#         newslug=f"{slug}-{qs.first().id}"
#         return create_uniq_slug(instance , newslug )
    
#     return slug