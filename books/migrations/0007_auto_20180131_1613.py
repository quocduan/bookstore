# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-01-31 16:13
from __future__ import unicode_literals

from django.db import migrations
from books.models import Publisher,Book

def migrate_book_publisher(apps, schema_editor):
    books=Book.objects.all()
    for b in books:
        if b.publisher_id1 and Publisher.objects.filter(publisher_id1=b.publisher_id1).exists():
            b.publisher=Publisher.objects.filter(publisher_id1=b.publisher_id1).first()
            b.save()
    pass

class Migration(migrations.Migration):

    dependencies = [
        ('books', '0006_book_authors'),
    ]

    operations = [
        migrations.RunPython(migrate_book_publisher),
    ]
