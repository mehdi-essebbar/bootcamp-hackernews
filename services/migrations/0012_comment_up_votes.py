# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-03-27 14:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0011_auto_20180327_1104'),
    ]

    operations = [
        migrations.AddField(
            model_name='comment',
            name='up_votes',
            field=models.IntegerField(default=0),
        ),
    ]
