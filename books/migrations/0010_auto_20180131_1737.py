# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-01-31 17:37
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0009_auto_20180131_1734'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='author',
            table='books_author',
        ),
        migrations.AlterModelTable(
            name='publisher',
            table='books_publisher',
        ),
    ]