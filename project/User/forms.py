from django import forms
from django.core import validators
from django.core.exceptions import ValidationError
from iranian_cities.models import Province as Ostan, City as Shahrestan
from django.utils.translation import gettext_lazy as _
from django.contrib.auth import get_user_model

User = get_user_model()

class EditProfileModelForm(forms.ModelForm):
    state = forms.ModelChoiceField(queryset=Ostan.objects.all(), label=_('State'))
    city = forms.ModelChoiceField(queryset=Shahrestan.objects.all(), label=_('county'))

    class Meta:
        model = User
        fields = ['first_name','last_name' ,'email', 'avatar', 'about_user', 'state', 'city',]
        widgets = {
            'first_name': forms.TextInput(attrs={
                'id':"namefirst" ,
                'class':"input-namefirst-checkout form-control"
            }),
            'last_name': forms.TextInput(attrs={
                'id':"namelast" ,
                'class':"input-namelast-checkout form-control"
            }),
            'email': forms.TextInput(attrs={
                'id' :"email" , 
                'class':"input-email-checkout form-control"
            }),
            'avatar': forms.FileInput(attrs={
                'id' :"avatar" , 
                'class':"input-avatar-checkout form-control"
            }),
            'address': forms.Textarea(attrs={
                'id' :"address" , 
                'class':"input-address-checkout form-control"            
            }),
            'about_user': forms.Textarea(attrs={
                'id' :"about_user" , 
                'class':"input-about_user-checkout form-control"   
            }),

        }

        labels = {
            'first_name': 'نام  ',
            'last_name': 'نام خانوادگی  ',
            'email': 'ایمیل  ',
            'avatar': 'تصویر پروفایل ',
            'address': 'آدرس ',
            'about_user': ' درباره شخص ',
            'state': '  استان ',
            'city': '  شهر ',
        }

        # error_messages = {
        #     'full_name': {
        #         'required': 'نام و نام خانوادگی اجباری می باشد. لطفا وارد کنید'
        #     }
        # }


class ChangePasswordForm(forms.Form):
    current_password = forms.CharField(
        label='کلمه عبور فعلی',
        widget=forms.PasswordInput(
            attrs={
                'id':"password" ,
                'class':"input-password-checkout form-control"
            }
        ),
        validators=[
            validators.MaxLengthValidator(100),
        ]
    )
    password = forms.CharField(
        label='کلمه عبور',
        widget=forms.PasswordInput(
            attrs={
                'id':"password" ,
                'class':"input-password-checkout form-control"
            }
        ),
        validators=[
            validators.MaxLengthValidator(100),
        ]
    )
    confirm_password = forms.CharField(
        label='تکرار کلمه عبور',
        widget=forms.PasswordInput(
            attrs={
                'id':"password"  ,
                'class':"input-password-checkout form-control"
            }
        ),
        validators=[
            validators.MaxLengthValidator(100),
        ]
    )

    def clean_confirm_password(self):
        password = self.cleaned_data.get('password')
        confirm_password = self.cleaned_data.get('confirm_password')

        if password == confirm_password:
            return confirm_password

        raise ValidationError('کلمه عبور جدید و تکرار کلمه عبور جدید مغایرت دارند')
