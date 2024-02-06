from django import forms
from django.contrib.auth.models import User
from .models import Profile
from django.contrib.auth.forms import PasswordResetForm
from django.core import validators
from captcha.fields import CaptchaField

class CaptchaPasswordResetForm(PasswordResetForm):
    captcha = CaptchaField()

class UserCreationForm(forms.ModelForm):
    # username = forms.CharField(label='اسم المستخدم')
    # email = forms.EmailField(max_length=100, label="البريد الالكترونى")
    # first_name = forms.CharField(max_length=100, label="الاسم الأول")
    # last_name = forms.CharField(max_length=100, label="الاسم الثانى")
    username = forms.CharField(
        label=('نام کاربری'),
        max_length=150,

        help_text=(
            "نام های کاربری نمی توانند حاوی فاصله یا نویسه های @/./+/-/_ باشند."),
        validators=[
            validators.RegexValidator(
                r'^[\w.@+-]+$', "نام کاربری نمی تواند حاوی فاصله باشد، این مقدار ممکن است فقط شامل حروف، اعداد ''و نویسه های @/./+/-/_ باشد.", 'invalid'),
        ],
        error_messages={'unique': (
            "کاربری با این نام کاربری از قبل وجود دارد.")},
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    email = forms.CharField(
        label=' ایمیل ' , widget=forms.EmailInput()
    )
    password1 = forms.CharField(
        label='رمز عبور', widget=forms.PasswordInput(), min_length=8)
    password2 = forms.CharField(
        label=' تکرار رمز عبور', widget=forms.PasswordInput(), min_length=8)

    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2')
        # fields = ('username', 'email', 'first_name',
        #           'last_name', 'password1', 'password2')

    def clean_password2(self):
        cd = self.cleaned_data
        if cd['password1'] != cd['password2']:
            raise forms.ValidationError('رمز عبور شما با رمز عبور اول مطابقت ندارد !')
        return cd['password2']

    def clean_username(self):
        cd = self.cleaned_data
        if User.objects.filter(username=cd['username']).exists():
            raise forms.ValidationError('کاربری با این مشخصات  از قبل وجود دارد ! ')
        return cd['username']

    def clean_email(self):
        cd = self.cleaned_data
        if User.objects.filter(email=cd['email']).exists():
            raise forms.ValidationError(' ایمیلی با این مشخصات از قبل وجود دارد  !')
        return cd['email']


class LoginForm(forms.ModelForm):
    username = forms.CharField(label='نام کاربری یا ایمیل ')
    password = forms.CharField(label='رمز عبور', widget=forms.PasswordInput())

    class Meta:
        model = User
        fields = ('username', 'password')
