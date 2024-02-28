from django.db import models
from account.models import User
from jalali_date import datetime2jalali, date2jalali
from django.utils.translation import gettext_lazy as _


# Create your models here.
class ArticleCategory(models.Model):
    parent = models.ForeignKey ('ArticleCategory' , null = True, blank = True, on_delete = models.CASCADE , verbose_name = _('Subcategory') )
    title = models.CharField(max_length = 200 , verbose_name = _('Category Title'))
    url_title = models.CharField(max_length = 200 , unique = True, verbose_name = _('Title in url'))
    is_active = models.BooleanField(default = True , verbose_name = _('Active / Passive'))


    def __str__(self):
        return self.title
    
    class Meta :
        verbose_name = _('Article Category')
        verbose_name_plural = _(' Articles Categories')
        # db_table = "articlecategory"


class Article(models.Model):
    title = models.CharField(max_length=300, verbose_name=_('Article Title'))    
    slug = models.SlugField(max_length = 400 , db_index = True ,allow_unicode = True , verbose_name = _('Title in url'))#We use the allow_Unicode item to convert Persian characters
    image = models.ImageField(upload_to='images/articles', verbose_name=_('Image of the Article'))
    short_description = models.TextField(verbose_name=_('Short Description'))
    text = models.TextField(null=True , verbose_name=_('Article text'))
    is_active = models.BooleanField(default=True, verbose_name = _('Active / Passive'))
    selected_categories = models.ManyToManyField(ArticleCategory, verbose_name=_('Categories'))
    author = models.ForeignKey(User, on_delete = models.CASCADE , null = True , editable = False ,  verbose_name = _('The Writer'))
    create_date = models.DateTimeField(auto_now_add =True , editable = False , verbose_name = _(' Date of Registration'))
    
    def __str__(self):
        return self.title

    def get_jalali_create_date(self):
        return date2jalali(self.create_date)

    def get_jalali_create_time(self):
        return self.create_date.strftime('%H:%M')
        
    class Meta :
        verbose_name = _(' Article')
        verbose_name_plural = _(' Articles ')


class ArticleComment(models.Model):
    article = models.ForeignKey(Article,on_delete =models.CASCADE , verbose_name = _('Article'))
    parent = models.ForeignKey('ArticleComment' ,null = True , blank = True , on_delete =models.CASCADE , verbose_name = _(' parent '))
    user = models.ForeignKey(User , on_delete =models.CASCADE , verbose_name = _('User'))
    create_date = models.DateTimeField(auto_now_add = True , verbose_name = _(' Date of Registration'))
    text = models.TextField(verbose_name = _('comment text '))
    is_active = models.BooleanField(default=False, verbose_name = _('Active / Passive'))

    def __str__(self):
        return str(self.user)

    class Meta :
        verbose_name = _('article comment')
        verbose_name_plural = _('Article Comments')