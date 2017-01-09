# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('workers', '0003_workers_position'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='workers',
            table='all_workers',
        ),
    ]
