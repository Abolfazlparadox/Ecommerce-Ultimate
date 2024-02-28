from django.contrib import admin
from . import models

class contact_usAdmin(admin.ModelAdmin):
    list_display = ['title','subject']
    # readonly_fields = ['subject']
    # list_per_page = 1 # تعداد مورد نمایش در هر صفحه
    # ordering = ('-id',)  # بر اساس ID به صورت نزولی


admin.site.register(models.contact_us ,contact_usAdmin)