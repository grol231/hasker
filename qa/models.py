from django.db import models

class Users(models.Model):
    login=models.CharField('login', max_length=255)
    email=models.CharField('email', max_length=255)
    password=models.CharField('password', max_length=255)
    photo=models.ImageField('photo')

