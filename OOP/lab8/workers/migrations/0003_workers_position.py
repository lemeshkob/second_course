# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('workers', '0002_remove_workers_position'),
    ]

    operations = [
        migrations.AddField(
            model_name='workers',
            name='position',
            field=models.ForeignKey(default=1, to='workers.Positions'),
            preserve_default=False,
        ),
    ]
