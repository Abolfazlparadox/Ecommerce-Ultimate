from django.contrib.auth.models import AbstractUser 
from django.db import models
from jalali_date import datetime2jalali, date2jalali
from django.utils.translation import gettext_lazy as _
from iranian_cities.fields import OstanField ,ShahrestanField ,ShahrField
# Create your models here.

class User(AbstractUser):
    mobile = models.CharField(max_length=20, verbose_name=_('Mobile number'), null = True)
    legendry_code = models.CharField(max_length=20 , verbose_name=_(' National Code '), null = True  ) 
    birthday = models.DateField(verbose_name=_(" Date of birth "), null=True, blank=True)
    avatar = models.ImageField(upload_to='images/profile', verbose_name=_('Avatar image'), null=True, blank=True)
    email_active_code = models.CharField(max_length=100, verbose_name=_('Email activation code'))
    about_user = models.TextField(null=True, blank=True, verbose_name=_('Biography'))
    address = models.TextField(null = True , blank = True , verbose_name = _(' Address '))
    state = OstanField(max_length=100, blank=True, null=True,verbose_name=_(' State' ))
    # city = ShahrField(max_length=100, blank=True, null=True, verbose_name=_('شهر'))
    city = ShahrestanField(max_length=100, blank=True, null=True, verbose_name=_('City '))
    post_code = models.CharField(max_length=100, blank=True, null=True,verbose_name=_('Post code'))
    Man =  _('Man')
    Female = _('Female')
    gender_choices = [
        (Man, _('Man')),
        (Female, _('Female')),
    ]
    gender = models.CharField(max_length=13,choices=gender_choices,default='-----',blank=True, null=True,verbose_name=_('gender'))
    customer = _('customer')
    vendor = _('vendor')
    account_select = [
        (customer, _('customer')),
        (vendor, _('vendor')),
    ]
    status = models.CharField(max_length=13,choices=account_select,default=customer,blank=True, null=True,verbose_name=_('status'))
    
    admission = models.BooleanField(default=False, verbose_name=_("admission") , blank=True, null=True)
    job = models.CharField(max_length=200, verbose_name=_(' Job'), null = True)
    class Meta:
        verbose_name = _('User')
        verbose_name_plural = _('Users')


    def get_jalali_create_date(self):
        return date2jalali(self.create_date)

    def get_jalali_create_time(self):
        return self.create_date.strftime('%H:%M')

    def __str__(self):
        if self.first_name is not '' and self.last_name is not '':
            return self.get_full_name()

        return self.Username

    