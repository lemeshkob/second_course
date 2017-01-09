# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('workers', '0004_auto_20170109_1524'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='workers',
            name='age',
        ),
        migrations.RemoveField(
            model_name='workers',
            name='full_name',
        ),
        migrations.RemoveField(
            model_name='workers',
            name='own_subject',
        ),
        migrations.RemoveField(
            model_name='workers',
            name='position',
        ),
        migrations.RemoveField(
            model_name='workers',
            name='salary',
        ),
        migrations.RemoveField(
            model_name='workers',
            name='sex',
        ),
    ]
