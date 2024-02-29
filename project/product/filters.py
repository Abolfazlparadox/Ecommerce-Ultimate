import django_filters
from .models import Product , ProductCategory

class MyModelFilter(django_filters.FilterSet):
    # product_categories = ProductCategory.objects.filter(is_active=True, is_delete=False)

    # # ایجاد یک Tuple برای انتخاب‌ها
    # Choices = [(category.id, category.title) for category in product_categories]

    # category = django_filters.ChoiceFilter(choices=Choices)
    class Meta:
        model = Product
        fields = [ 'title' , 'category']