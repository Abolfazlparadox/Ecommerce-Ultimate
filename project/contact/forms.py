from django import forms
from .models import contact_us
from django.core import validators
from ckeditor.widgets import CKEditorWidget
from django.utils.translation import gettext_lazy as _
from django.core.validators import MinLengthValidator, MaxLengthValidator



# class ContactUsForm(forms.Form): #Inside the models, only Cher field can be used for text and there is no text field, so we can use widgets.
#     full_name = forms.CharField(
#         label='نام و نام خانوادگی',
#         max_length=50,
#         error_messages={
#             'required': 'لطفا نام و نام خانوادگی خود را وارد کنید',
#             'max_length': 'نام و نام خانوادگی نمی تواند بیشتر از 50 کاراکتر باشد'
#         },
#         #We can use attrs inside the widgets and give them the desired class as well as the police holder, which is the desired half of the text box.
#         widget=forms.TextInput(attrs={
#             'class': 'form-control',
#             'placeholder': 'نام و نام خانوادگی'
#         })
#     )
#     email = forms.EmailField(
#         label='ایمیل',
#         widget=forms.EmailInput(attrs={
#             'class': 'form-control',
#             'placeholder': 'ایمیل'
#         })
#     )
#     title = forms.CharField(
#         label='عنوان',
#         widget=forms.TextInput(attrs={
#             'class': 'form-control',
#             'placeholder': 'عنوان'
#         })
#     )
#     massage = forms.CharField(
#         label='متن پیام',
#         widget=forms.Textarea(attrs={
#             'class': 'form-control',
#             'placeholder': 'متن پیام',
#             'rows': '5',
#             'id': 'message'
#         })
#     )

class ContactUsModelForm(forms.ModelForm):
    # subject_choices = [
    #     ('Proposal', _('پیشنهاد ها')),
    #     ('Criticism', _('انتقاد ها')),
    #     ('Complaint', _('شکایت')),
    #     ('Tracking', _('پیگیری سفارش')),
    #     ('others', _('سایر موارد ')),
    # ]

    # subject = forms.ChoiceField(choices=subject_choices, label=_(' -- موضوع خود را انتخاب کنید -- '), required=True)
    message = forms.CharField(label=_('message'), widget=CKEditorWidget())

    class Meta:
        model = contact_us
        #fields = '__all__' #The all command means to return all the values in our model
        #exclude = ['response'] #The exclude command returns what we want, that is, we want the rest of all the items except that item.
        fields = ['full_name', 'email' , 'mobile_number', 'title', 'message' , 'subject',]
        widgets = {
            'full_name': forms.TextInput(attrs={
                'placeholder': _('Example: Mohammad Reza Ahmadi') ,
                'style': 'color: #550; font-size: 12px;',
                'class': 'form-field js-input-field form-control'
            }),
            'email': forms.TextInput(attrs={
                'placeholder': _('Example: test.123@gmail.com') ,
                'style': 'color: #550; font-size: 12px;',
                'class': 'form-field js-input-field form-control'
            }),
            'mobile_number': forms.TextInput(attrs={
                'minlength':'11',
                'maxlength':'11',
                'placeholder': _('Example: 09123456789') ,
                'style': 'color: #550; font-size: 12px;',
                'class': 'form-field js-input-field form-control'
            }),
            'title': forms.TextInput(attrs={
                'placeholder': _('Example: Hello...') ,
                'style': 'color: #550; font-size: 12px;',
                'class': 'form-field js-input-field form-control'            
                }),
            # 'message': forms.Textarea(attrs={
            #     'class': 'form-control',
            #     'rows': 5,
            #     'id': 'message'
            # })
        }

        labels = {
            'full_name': _("Your First and Last name"),
            'email': _('Your Email') ,
            'mobile_number': _('Mobile Number')
        }

        error_messages = {
            'full_name': {
            'required': _('Full name is Required and please Enter')
            },
            'email': {
            'required': _('Email is Required. Please Enter')
            },
            'mobile_number': {
            'required': _('Mobile Number is Required. Please Enter')
            },
}

# class ProfileForm(forms.Form):
#     user_image = forms.ImageField()