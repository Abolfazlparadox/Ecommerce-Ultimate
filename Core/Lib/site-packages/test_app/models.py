from django.db import models

from iranian_cities.fields import OstanField, ShahrestanField, BakhshField, ShahrField, DehestanField, AbadiField


class TestModel(models.Model):
    ostan = OstanField()
    shahrestan = ShahrestanField()
    bakhsh = BakhshField()
    # shahr = ShahrField()
    # dehestan = DehestanField()
    # abadi = AbadiField()
