from django.shortcuts import render, redirect
from django.urls import reverse
from django.views import View
from .models import User  
from pages.models import SiteSetting
from django.utils.crypto import get_random_string
from django.http import Http404, HttpRequest
from django.contrib.auth import login, logout
from .forms import RegisterForm, LoginForm, ForgotPasswordForm, ResetPasswordForm
from django.utils.translation import gettext_lazy as _
from typing import Any
from utils.email_service import send_email  # Make sure this path is correct, or define send_email if needed

class RegisterView(View):
    def get(self, request: HttpRequest):
        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        context: dict[str, Any] = {
            'register_form': RegisterForm ,
            'site_setting': setting
        }
        

        return render(request, 'account_module/register.html', context)

    def post(self, request: HttpRequest):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user_email = register_form.cleaned_data.get('email')
            user_password = register_form.cleaned_data.get('password')
            user: bool = User.objects.filter(email__iexact=user_email).exists()
            if user:
                register_form.add_error('email', _('The entered email is duplicate'))
            else:
                new_user = User(
                    email=user_email,
                    email_activation_code=get_random_string(72),
                    is_active=False,
                    username=user_email)
                new_user.set_password(user_password)
                new_user.save()
                send_email('فعالسازی حساب کاربری', new_user.email, {'user': new_user}, 'emails/activate_account.html')
                return redirect(reverse('login_page'))
            
        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        context: dict[str, Any] = {
            'register_form': register_form ,
            'site_setting': setting
        }

        return render(request, 'account_module/register.html', context)

class ActivateAccountView(View):
    def get(self, request: HttpRequest, email_activation_code: str):
        user: User | None = User.objects.filter(email_activation_code__iexact=email_activation_code).first()
        if user is not None:
            if not user.is_active:
                user.is_active = True
                user.email_activation_code = get_random_string(72)
                user.save()
                # todo: show success message to user
                return redirect(reverse('login_page'))
            else:
                # todo: show your account was activated message to user
                pass

        raise Http404
    
class LoginView(View):
    def get(self, request: HttpRequest):
        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        login_form = LoginForm()
        context: dict[str, Any] = {
            'login_form': login_form ,
            'site_setting': setting
        }
        return render(request, 'account_module/login.html', context)

    def post(self, request: HttpRequest):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user_email = login_form.cleaned_data.get('email')
            user_pass = login_form.cleaned_data.get('password')
            user: User | None = User.objects.filter(email__iexact=user_email).first()
            if user is not None:
                if not user.is_active:
                    login_form.add_error('email', _('Your account has not been activated'))
                else:
                    if user_pass is not None:
                        is_password_correct = user.check_password(user_pass)
                        if is_password_correct:
                            login(request, user)
                            return redirect(reverse('welcome_page'))
                        else:
                            login_form.add_error('password',  _('The password is wrong'))
                    else:
                        login_form.add_error('password', _('Password cannot be empty'))
            else:
                login_form.add_error('email', _('A user with the entered profile was not found'))

        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        context: dict[str, Any] = {
            'login_form': login_form ,
            'site_setting': setting
        }

        return render(request, 'account_module/login.html', context)

class ForgetPasswordView(View):
    def get(self, request: HttpRequest):
        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        forget_pass_form = ForgotPasswordForm()
        context: dict[str, Any] = {
            'forget_pass_form': forget_pass_form ,
            'site_setting': setting
            }
        return render(request, 'account_module/forgot_password.html', context)

    def post(self, request: HttpRequest):
        forget_pass_form = ForgotPasswordForm(request.POST)
        if forget_pass_form.is_valid():
            user_email = forget_pass_form.cleaned_data.get('email')
            user: User | None = User.objects.filter(email__iexact=user_email).first()
            if user is not None:
                send_email('بازیابی کلمه عبور', user.email, {'user': user}, 'emails/forgot_password.html')
                return redirect(reverse('home_page'))
        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        context: dict[str, Any] = {
            'forget_pass_form': forget_pass_form , 
            'site_setting': setting
            }
        return render(request, 'account_module/forgot_password.html', context)

class ResetPasswordView(View):
    def get(self, request: HttpRequest, active_code: str):
        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        user: User | None = User.objects.filter(email_activation_code__iexact=active_code).first()
        if user is None:
            return redirect(reverse('login_page'))
        reset_pass_form = ResetPasswordForm()

        context: dict[str, Any] = {
            'reset_pass_form': reset_pass_form,
            'site_setting': setting ,
            'user': user
        }
        return render(request, 'account_module/reset_password.html', context)
    def post(self, request: HttpRequest, active_code: str):
        reset_pass_form = ResetPasswordForm(request.POST)
        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        user: User | None = User.objects.filter(email_activation_code__iexact=active_code).first()
        if reset_pass_form.is_valid():
            if user is None:
                return redirect(reverse('login_page'))
            user_new_pass = reset_pass_form.cleaned_data.get('password')
            user.set_password(user_new_pass)
            user.email_activation_code = get_random_string(72)
            user.is_active = True
            user.save()
            return redirect(reverse('login_page'))

        context: dict[str, Any] = {
            'site_setting': setting ,
            'reset_pass_form': reset_pass_form,
            'user': user
        }

        return render(request, 'account_module/reset_password.html', context)

class LogoutView(View):
    def get(self, request: HttpRequest):
        logout(request)
        return redirect(reverse('home_page'))
    
class WelcomeView(View):
    def get(self, request: HttpRequest):
        setting: SiteSetting | None = SiteSetting.objects.filter(is_main_setting=True).first()
        context = {'site_setting': setting}
        return render(request, 'account_module/welcome.html', context)

