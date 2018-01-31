# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Authors(models.Model):
    author_id = models.CharField(max_length=4, primary_key=True)
    name = models.CharField(max_length=25, blank=True, null=True)
    url = models.CharField(max_length=80, blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'authors'


class Books(models.Model):
    # International Standard Book Number (ISBN) is a unique numeric commercial book identifier.
    isbn = models.CharField(max_length=13, primary_key=True)
    title = models.CharField(max_length=60, blank=True, null=True)
    publisher_id = models.CharField(max_length=5, blank=True, null=False)
    url = models.CharField(max_length=80, blank=True, null=True)
    price = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'books'


class Booksauthors(models.Model):
    isbn = models.CharField(max_length=13)
    author_id = models.CharField(max_length=4)
    # https://en.wikipedia.org/wiki/Book_series
    seq_no = models.SmallIntegerField(blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'booksauthors'


class Publishers(models.Model):
    publisher_id = models.CharField(max_length=5, primary_key=True)
    name = models.CharField(max_length=30, blank=True, null=True)
    url = models.CharField(max_length=80, blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'publishers'
