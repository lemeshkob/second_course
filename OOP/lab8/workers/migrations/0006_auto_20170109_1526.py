# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('workers', '0005_auto_20170109_1525'),
    ]

    operations = [
        migrations.AddField(
            model_name='workers',
            name='age',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='workers',
            name='full_name',
            field=models.CharField(default=1, max_length=200),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='workers',
            name='position',
            field=models.ForeignKey(default=1, to='workers.Positions'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='workers',
            name='salary',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='workers',
            name='sex',
            field=models.CharField(default=1, max_length=9),
            preserve_default=False,
        ),
    ]
