# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Positions',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100)),
                ('requirements', models.TextField()),
                ('personal_id', models.IntegerField()),
            ],
            options={
                'db_table': 'positions',
            },
        ),
        migrations.CreateModel(
            name='Workers',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('full_name', models.CharField(max_length=200)),
                ('own_subject', models.CharField(max_length=100)),
                ('salary', models.IntegerField()),
                ('sex', models.CharField(max_length=9)),
                ('age', models.IntegerField()),
                ('position', models.ForeignKey(to='workers.Positions')),
            ],
            options={
                'db_table': 'workers',
            },
        ),
    ]
