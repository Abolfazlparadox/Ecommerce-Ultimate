# accounts/admin.py
from django.contrib import admin
from .models import User, Address
from django.utils.translation import gettext_lazy as _
from django.contrib.admin import ModelAdmin
@admin.register(User)
class UserAdmin(ModelAdmin[User]):
    list_display = ("id", "username", "mobile", "national_code", "account_type", "is_admitted", "jalali_date_joined")
    list_filter = ("account_type", "gender", "is_admitted", "is_staff", "is_superuser")
    search_fields = ("username", "first_name", "last_name", "mobile", "national_code", "email")
    readonly_fields = ("date_joined", "updated_at", "jalali_date_joined", "jalali_updated_at")
    fieldsets = (
        (_("اطلاعات کاربری"), {
            "fields": ("username", "password", "first_name", "last_name", "email", "mobile", "national_code", "job", "avatar", "about_user")
        }),
        (_("وضعیت و نقش"), {
            "fields": ("account_type", "gender", "is_admitted", "is_active", "is_staff", "is_superuser", "groups", "user_permissions")
        }),
        (_("تاریخ‌ها"), {
            "fields": ("birthday", "jalali_birthday", "date_joined", "jalali_date_joined", "updated_at", "jalali_updated_at")
        }),
        (_("فعال‌سازی"), {
            "fields": ("email_activation_code",)
        }),
    )

@admin.register(Address)
class AddressAdmin(ModelAdmin[Address]):
    list_display = ("id", "user", "title", "address_type", "province", "city", "postal_code", "is_default", "jalali_created_at")
    list_filter = ("address_type", "province", "city", "is_default")
    search_fields = ("user__username", "user__mobile", "province", "city", "postal_code", "receiver_full_name", "receiver_mobile")
