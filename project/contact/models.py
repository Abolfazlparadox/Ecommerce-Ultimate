from django.db import models
from ckeditor.fields import RichTextField
from django.utils.translation import gettext_lazy as _
from django.core.validators import MinLengthValidator, MaxLengthValidator

# Create your models here.

class contact_us(models.Model):
    class contact_us(models.TextChoices):
        Proposal = 'Proposal' , _('Suggestions')
        Criticism ='Criticism' , _('Criticisms')
        Complaint ='Complaint' , _(' Complaint ')
        Tracking ='Tracking' , _('Order Tracking')
        other ='other' , _(' Other cases ')

    subject = models.CharField(max_length = 200 , null=True , choices =contact_us.choices, verbose_name= _('Subject'))
    title = models.CharField(max_length = 300, verbose_name = _(' Title '))
    full_name = models.CharField(max_length = 300, verbose_name = _(' First Name and Last Name '))
    email = models.EmailField(max_length = 300, verbose_name = _('Email'))
    mobile_number = models.CharField(max_length = 11,null=True, verbose_name=_('Phone Number'))
    message = models.TextField(max_length = 300, verbose_name = _('Text to Contact us'))
    created_date = models.DateField(verbose_name = _(' Creation Date '), auto_now_add = True) #The auto_now_add command gives us the date of adding that item
    response =RichTextField(verbose_name = _('Answer text') , null=True , blank=True)
    is_read_by_admin = models.BooleanField(verbose_name = _('Viewed by Admin'), default=False)
    class Meta:
        verbose_name = _(' Contact us ')
        verbose_name_plural = _('Contacts us')

    def __str__(self) -> str:
        return self.title
    

class UserProfile(models.Model):
    image = models.ImageField(upload_to= 'images')


