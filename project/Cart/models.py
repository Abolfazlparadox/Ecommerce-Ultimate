from django.db import models
from account.models import User
from product.models import Product
# Create your models here.

class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='کاربر')
    is_paid = models.BooleanField(null=True, blank=True,verbose_name='نهایی شده / نشده')
    payment_date = models.DateField(null=True, blank=True, verbose_name='تاریخ پرداخت')

    def __str__(self):
        return str(self.user)
    

    def calculate_total_price(self):
        total_amount = 0
        if self.is_paid:
            for cart_detail in self.cartdetail_set.all():
                total_amount += cart_detail.final_price * cart_detail.count
        else :
            for cart_detail in self.cartdetail_set.all():
                total_amount += cart_detail.product.price * cart_detail.count

        return total_amount
            

    class Meta:
        verbose_name = 'سبد خرید'
        verbose_name_plural = 'سبدهای خرید کاربران'


class CartDetail(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE, verbose_name='سبد خرید')
    product = models.ForeignKey(Product, on_delete=models.CASCADE, verbose_name='محصول')
    final_price = models.IntegerField(null=True, blank=True, verbose_name='قیمت نهایی تکی محصول')
    count = models.IntegerField(verbose_name='تعداد')

    def get_total_price (self):
        return self.count * self.product.price

    def __str__(self):
        return str(self.cart)

    class Meta:
        verbose_name = 'جزئیات سبد خرید'
        verbose_name_plural = 'لیست جزئیات سبدهای خرید'