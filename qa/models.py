from django.db import models

class Users(models.Model):
    login=models.CharField('login', max_length=255)
    email=models.CharField('email', max_length=255)
    password=models.CharField('password', max_length=255)
    photo=models.ImageField('photo')

class Questions(models.Model):
    content=models.CharField('content', max_length=255)
    author=models.CharField('author', max_length=255)
    question_date=models.CharField('question_date', max_length=255)
    title=models.CharField('title', max_length='255')

class Tags(models.Model):
    label=models.CharField('label', max_length=255)
