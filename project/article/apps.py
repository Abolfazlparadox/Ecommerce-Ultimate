from django.apps import AppConfig
from django.utils.translation import gettext_lazy as _


class ArticleConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'article'
    verbose_name = _('Article')
