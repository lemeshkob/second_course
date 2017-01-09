from django.contrib import admin
from workers.models import Workers
from workers.models import Positions

# Register your models here.
admin.site.register(Workers)
admin.site.register(Positions)