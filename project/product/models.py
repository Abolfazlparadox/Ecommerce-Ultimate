from typing import Iterable
from django.db import models
from django.urls import reverse
from django.utils.text import slugify
from account.models import User
import django_filters
from ckeditor.fields import RichTextField
from django.db.models.signals import pre_save
from .utils import create_shortcode , create_shortcode_en
from django.utils.translation import gettext_lazy as _
from colorfield.fields import ColorField

# Create your models here.

class ProductCategory(models.Model):
    title = models.CharField(max_length=300, db_index=True, verbose_name=_('Category Tile'))
    url_title = models.SlugField(allow_unicode=True , null=False, db_index=True, blank=True, max_length=200, unique=True , verbose_name = _('Title in url') )
    Status_select_is_active = [
        (True, _('Active'),),
        (False, _('Inactive')),
    ]
    is_active = models.BooleanField(default=False,choices=Status_select_is_active, verbose_name=_('Status'))
    Status_select_is_delete = [
        (True, _('Yes')),
        (False, _('No')),
    ]
    is_delete = models.BooleanField(default=False ,choices=Status_select_is_delete , verbose_name=_('Delete') , help_text= _("This category will be removed from the website page, but it will be stored in the database"))

    def __str__(self):
        return f'( {self.title} - {self.url_title} )'

    class Meta:
        verbose_name = _('Category')
        verbose_name_plural = _('Categories')

class product_brand(models.Model):
    title = models.CharField(max_length=300 , verbose_name = _('Brand Title'),db_index=True)
    url_title = models.SlugField(allow_unicode=True , null=False, db_index=True, blank=True, max_length=200, unique=True , verbose_name = _('Title in url') )
    Status_select_is_active = [
        (True, _('Active'),),
        (False, _('Inactive')),
    ]
    is_active = models.BooleanField(default=False,choices=Status_select_is_active, verbose_name=_('Status'))

    class Meta:
        verbose_name = _('Brand')
        verbose_name_plural = _('Brands')

    def __str__(self):
        return self.title
class ProductColor(models.Model):
    name = models.CharField(max_length=255, verbose_name = _('Product Color Name'),null=True , blank=True ,)
    COLOR_PALETTE = [
        ("#FFFFFF",  _("White"), ),
        ("#000000",  _("Black"), ),
        ("#FFFF00",  _("Yellow"), ),
        ("#FFA500",  _("Orange"), ),
        ("#FFC0CB",  _("Pink"), ),
        ("#FF0000",  _("Red"), ),
        ("#008000",  _("Green"), ),
        ("#1E90FF", _("Indigo"), ),
        ("#0000FF", _("Blue"), ),
        ("#800080", _("Purple"), ),
    ]
    color = ColorField(samples=COLOR_PALETTE)
    class Meta:
        verbose_name = _('Color')
        verbose_name_plural = _('Colors')
    def save(self, *args, **kwargs):
        # انتخاب نام رنگ بر اساس مقدار انتخاب شده
        for color_code, color_name in self.COLOR_PALETTE:
            if self.color == color_code:
                self.name = color_name


        super().save(*args, **kwargs)
    def __str__(self):
        return str(self.name)
    

class Product(models.Model):
    title = models.CharField(max_length=300 , verbose_name = _('Product Name'))
    category = models.ManyToManyField(ProductCategory,related_name='product_categories',verbose_name=_('Categories'))
    image = models.ImageField(upload_to='images/product',null=True , blank=True , verbose_name=_('Product image'))
    brand = models.ForeignKey(product_brand , on_delete=models.CASCADE , verbose_name = _('Brands'), null = True , blank = True) 
    price = models.IntegerField(verbose_name=_('Price'))
    short_description = models.CharField(max_length=400, db_index=True, null=True, verbose_name=_('Short Description'))
    description = RichTextField(verbose_name=_('Main Description'))
    discount = models.IntegerField(null=True , blank=True , verbose_name=_('discount percent') )
    discounted_price = models.IntegerField(null=True , blank=True , verbose_name=_('Price After Discount'))
    slug = models.SlugField( allow_unicode=True , null=False, db_index=True, blank=True, max_length=200, unique=True , verbose_name = _('Title in url') )
    color = models.ManyToManyField(ProductColor,related_name='product_colors',verbose_name=_('Colors'))
    width = models.FloatField(blank=True, null=True, verbose_name=_('Width'))
    length = models.FloatField(blank=True, null=True, verbose_name=_('Length'))
    height = models.FloatField(blank=True, null=True, verbose_name=_('Height'))
    warranty =models.IntegerField(null=True , blank=True , verbose_name=_('warranty') , help_text = _("The amount you enter should be in months"))
    weight = models.DecimalField(default=0,max_digits=10, decimal_places=3, blank=True, null=True,  verbose_name=_('Weight'))
    stock = models.PositiveIntegerField(default=0, blank=True, null=True, verbose_name=_('stock'))
    promotional_select = [
        ('Normal', _('Normal')),
        ('New', _('New')),
        ('Hot', _('Hot')),
    ]
    promotional = models.CharField(max_length=13,choices=promotional_select,default='New', blank=True, null=True,verbose_name=_('Promotional'))
    Status_select_is_active = [
        (True, _('Active'),),
        (False, _('Inactive')),
    ]
    is_active = models.BooleanField(default=False,choices=Status_select_is_active, verbose_name=_('Status'))
    Status_select_is_delete = [
        (True, _('Yes')),
        (False, _('No')),
    ]
    is_delete = models.BooleanField(default=False ,choices=Status_select_is_delete , verbose_name=_('Delete') , help_text= _("This product will be removed from the website page, but it will be stored in the database"))

    def save(self, *args, **kwargs):
        if  self.discount is not None :
            self.discounted_price = self.price * (1-(self.discount/100))
        super().save(*args, **kwargs)


    
    def get_absolute_url(self):
        return reverse('product-detail', args=[self.slug])



    def __str__(self):
        return f"{self.title} ({self.price})"

    class Meta:
        verbose_name = _('Product')
        verbose_name_plural = _('Products')
def pre_save_post_receiver(sender, instance, *args, **kwargs):
        instance.slug = slugify(instance.title, allow_unicode=True)
        qs_exists = Product.objects.filter(slug=instance.slug).exists()
        if qs_exists:
            instance.slug = create_shortcode(instance)


pre_save.connect(pre_save_post_receiver, sender=Product)
def pre_save_post_receiver(sender, instance, *args, **kwargs):
        instance.slug_en = slugify(instance.title_en, allow_unicode=True)
        qs_exists = Product.objects.filter(slug_en=instance.slug_en).exists()
        if qs_exists:
            instance.slug_en = create_shortcode_en(instance)


pre_save.connect(pre_save_post_receiver, sender=Product)




class ProductTag(models.Model):
    caption = models.CharField(max_length=300, db_index=True, verbose_name=_('Product Tag Title'))
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='product_tags',verbose_name=_('Available product'))

    class Meta:
        verbose_name = _('Product Tag')
        verbose_name_plural = _('Product Tags')

    def __str__(self):
        return self.caption
    
class ProductPoint(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='product_point',null=True, blank=True,verbose_name=_('Available product'))
    strong_point = models.CharField(max_length=200,verbose_name=_('Strong_Point') ,help_text = _("The maximum length is 200 character"))
    weak_point = models.CharField(max_length=200,verbose_name=_('Weak_Point'),help_text = _("The maximum length is 200 character"))
class ProductVisit(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, verbose_name=_('Product'))
    ip = models.CharField(max_length=30, verbose_name=_('User IP'))
    user = models.ForeignKey(User, null=True, blank=True, verbose_name=_('User'), on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.product.title} / {self.ip}'

    class Meta:
        verbose_name = _('Product Visit')
        verbose_name_plural = _('Product Visits')

class ProductGallery(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE,null=True, blank=True, verbose_name=_('Product'))
    image = models.ImageField(upload_to='images/product-gallery', verbose_name=_('Product Image'))

    def __str__(self):
        return self.product.title

    class Meta:
        verbose_name = _('Gallery Image')
        verbose_name_plural = _('Gallery Images')

class Rating(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='ratings')
    rating = models.PositiveIntegerField(choices=((1, '1'), (2, '2'), (3, '3'), (4, '4'), (5, '5')))
    comment = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ['user', 'product']





