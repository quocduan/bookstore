# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-01-31 18:15
from __future__ import unicode_literals

from django.db import migrations

from books.models import Publisher,Book, Author, BooksAuthors, Store

def generate_store_books_data(apps, schema_editor):
    booksauthors=BooksAuthors.objects.all()
    for ba in booksauthors:
        # ba.seq_no
        # ba.author_id1
        s=Store.objects.filter(id=ba.seq_no).first()


        if Book.objects.filter(isbn=ba.isbn).exists():
            s.books.add(Book.objects.filter(isbn=ba.isbn).first())
            s.save()


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0014_auto_20180131_1748'),
    ]

    operations = [
        migrations.RunPython(generate_store_books_data),
    ]