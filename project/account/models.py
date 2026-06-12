from __future__ import annotations
from typing import Optional, TYPE_CHECKING
from django.contrib.auth.models import AbstractUser
from django.db import models
from django.utils.translation import gettext_lazy as _
from django.core.validators import RegexValidator
from jalali_date import date2jalali, datetime2jalali  # type: ignore
from django.contrib.auth import get_user_model

from .validators import validate_iran_mobile, validate_iran_national_code

if TYPE_CHECKING:
    # For type checkers (django-stubs resolves this properly)
    User = get_user_model()


# -----------------------------
# Upload path helpers
# -----------------------------
def user_avatar_upload_path(instance: models.Model, filename: str) -> str:
    # You can safely cast to User if needed
    if isinstance(instance, User):
        return f"images/profile/user_{instance.pk}/{filename}"
    return f"images/profile/user_unknown/{filename}"


# -----------------------------
# Custom User model
# -----------------------------
class User(AbstractUser):
    class Gender(models.TextChoices):
        MALE = "male", _("مرد")
        FEMALE = "female", _("زن")
        OTHER = "other", _("سایر")

    class AccountType(models.TextChoices):
        CUSTOMER = "customer", _("مشتری")
        VENDOR = "vendor", _("فروشنده")

    mobile = models.CharField(
        max_length=11,
        unique=True,
        null=True,
        blank=True,
        validators=[validate_iran_mobile],
        verbose_name=_("شماره موبایل"),
        help_text=_("فرمت معتبر: 09XXXXXXXXX"),
        db_index=True,
    )

    national_code = models.CharField(
        max_length=10,
        unique=True,
        null=True,
        blank=True,
        validators=[validate_iran_national_code],
        verbose_name=_("کد ملی"),
        help_text=_("۱۰ رقم، با کنترل صحت"),
        db_index=True,
    )

    birthday = models.DateField(
        null=True,
        blank=True,
        verbose_name=_("تاریخ تولد"),
    )

    avatar = models.ImageField(
        upload_to=user_avatar_upload_path,
        null=True,
        blank=True,
        verbose_name=_("تصویر پروفایل"),
    )

    email_activation_code = models.CharField(
        max_length=128,
        null=True,
        blank=True,
        verbose_name=_("کد فعال‌سازی ایمیل"),
        help_text=_("برای تأیید ایمیل یا بازیابی رمز عبور"),
        db_index=True,
    )

    about_user = models.TextField(
        null=True,
        blank=True,
        verbose_name=_("بیوگرافی"),
    )

    account_type = models.CharField(
        max_length=16,
        choices=AccountType.choices,
        default=AccountType.CUSTOMER,
        verbose_name=_("نوع حساب"),
        db_index=True,
    )

    gender = models.CharField(
        max_length=16,
        choices=Gender.choices,
        null=True,
        blank=True,
        verbose_name=_("جنسیت"),
        db_index=True,
    )

    is_admitted = models.BooleanField(
        default=False,
        verbose_name=_("پذیرفته/احراز شده"),
        help_text=_("برای فروشندگان یا کاربران احراز هویت شده"),
    )

    job = models.CharField(
        max_length=200,
        null=True,
        blank=True,
        verbose_name=_("شغل"),
    )

    updated_at = models.DateTimeField(
        auto_now=True,
        verbose_name=_("تاریخ به‌روزرسانی"),
    )

    class Meta:
        verbose_name = _("کاربر")
        verbose_name_plural = _("کاربران")
        indexes = [
            models.Index(fields=["mobile"]),
            models.Index(fields=["national_code"]),
            models.Index(fields=["account_type"]),
            models.Index(fields=["gender"]),
        ]

    # ---- Jalali helpers ----
    @property
    def jalali_birthday(self) -> Optional[str]:
        return (
            date2jalali(self.birthday).strftime("%Y/%m/%d") # type: ignore
            if self.birthday
            else None
        )

    @property
    def jalali_date_joined(self) -> str:
        return datetime2jalali(self.date_joined).strftime("%Y/%m/%d - %H:%M") # type: ignore

    @property
    def jalali_updated_at(self) -> str:
        return datetime2jalali(self.updated_at).strftime("%Y/%m/%d - %H:%M") # type: ignore

    # ---- Role helpers ----
    @property
    def is_vendor(self) -> bool:
        return self.account_type == self.AccountType.VENDOR.value

    @property
    def is_customer(self) -> bool:
        return self.account_type == self.AccountType.CUSTOMER.value

    # ---- Display helpers ----
    def __str__(self) -> str:
        full_name = self.get_full_name().strip()
        return full_name or self.username

# -----------------------------
# Address model
# -----------------------------
postal_code_validator = RegexValidator(
    regex=r"^\d{10}$",
    message=_("کد پستی باید ۱۰ رقم باشد."),
)

class Address(models.Model):
    class AddressType(models.TextChoices):
        SHIPPING = "shipping", _("آدرس ارسال")
        BILLING = "billing", _("آدرس صورتحساب")

    user = models.ForeignKey('account.User', on_delete=models.CASCADE)

    title = models.CharField(
        max_length=50,
        verbose_name=_("عنوان آدرس"),
        help_text=_("مثال: خانه، محل کار"),
    )

    address_type = models.CharField(
        max_length=16,
        choices=AddressType.choices,
        default=AddressType.SHIPPING,
        verbose_name=_("نوع آدرس"),
    )

    province = models.CharField(
        max_length=50,
        verbose_name=_("استان"),
        db_index=True,
    )
    
    # فیلد شهر اصلاح شد
    city = models.CharField(
        max_length=50,
        verbose_name=_("شهر"),
        db_index=True,
    )
    
    address_line = models.TextField(
        verbose_name=_("نشانی پستی"),
        help_text=_("خیابان، کوچه، پلاک، واحد"),
    )

    postal_code = models.CharField(
        max_length=10,
        validators=[postal_code_validator],
        verbose_name=_("کد پستی"),
        db_index=True,
    )

    receiver_full_name = models.CharField(
        max_length=100,
        verbose_name=_("نام گیرنده"),
    )

    receiver_mobile = models.CharField(
        max_length=11,
        validators=[validate_iran_mobile],
        verbose_name=_("موبایل گیرنده"),
        db_index=True,
    )

    is_default = models.BooleanField(
        default=False,
        verbose_name=_("آدرس پیش‌فرض"),
    )

    created_at = models.DateTimeField(
        auto_now_add=True,
        verbose_name=_("تاریخ ایجاد"),
    )

    updated_at = models.DateTimeField(
        auto_now=True,
        verbose_name=_("تاریخ به‌روزرسانی"),
    )

    class Meta:
        verbose_name = _("آدرس")
        verbose_name_plural = _("آدرس‌ها")
        indexes = [
            models.Index(fields=["user", "is_default"]),
            models.Index(fields=["province", "city"]),
        ]
        constraints = [
            models.UniqueConstraint(
                fields=["user"],
                condition=models.Q(is_default=True),
                name="unique_default_address_per_user",
            )
        ]

    # ---- Jalali helpers ----
    @property
    def jalali_created_at(self) -> str:
        return datetime2jalali(self.created_at).strftime("%Y/%m/%d - %H:%M") # type: ignore

    @property
    def jalali_updated_at(self) -> str:
        return datetime2jalali(self.updated_at).strftime("%Y/%m/%d - %H:%M") # type: ignore

    def __str__(self) -> str:
        return f"{self.title} - {self.city} / {self.province}"