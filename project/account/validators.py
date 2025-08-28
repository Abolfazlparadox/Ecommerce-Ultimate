# accounts/validators.py
import re
from django.core.exceptions import ValidationError
from django.utils.translation import gettext_lazy as _

MOBILE_REGEX = re.compile(r"^09\d{9}$")

def validate_iran_mobile(value: str):
    if not MOBILE_REGEX.match(value or ""):
        raise ValidationError(_("شماره موبایل نامعتبر است. مثال صحیح: 09123456789"))

def validate_iran_national_code(value: str):
    """
    Iranian national ID (کدملی) validator.
    Accepts 10 digits; checks checksum.
    """
    code = (value or "").strip()
    if not code.isdigit() or len(code) != 10:
        raise ValidationError(_("کد ملی باید ۱۰ رقمی و فقط عدد باشد."))

    # reject sequences like 0000000000, 1111111111, ...
    if len(set(code)) == 1:
        raise ValidationError(_("کد ملی نامعتبر است."))

    checksum = int(code[-1])
    s = sum(int(code[i]) * (10 - i) for i in range(9)) % 11
    if (s < 2 and checksum != s) or (s >= 2 and checksum != 11 - s):
        raise ValidationError(_("کد ملی نامعتبر است."))
