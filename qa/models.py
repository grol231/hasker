from django.db import models

class Users(models.Model):
    login=models.CharField('login', max_length=255)
    email=models.CharField('email', max_length=255)
    password=models.CharField('password', max_length=255)
    photo=models.ImageField('photo')

class Questions(models.Model):
    author=models.ForeignKey('Users', on_delete=models.CASCADE)
    title=models.CharField('title', max_length=255)
    context=models.CharField('context', max_length=255)
    ts=models.DecimalField('ts', max_digits=20, decimal_places=0)
    rating=models.DecimalField('rating', max_digits=20, decimal_places=0)

class Tags(models.Model):
    label=models.CharField('label', max_length=255)

class Answers(models.Model):
    question_id=models.DecimalField('question_id', max_digits=20, decimal_places=0)
    ts=models.DecimalField('ts', max_digits=20, decimal_places=0)
    correct=models.BooleanField('correct', default=False)
    rating=models.DecimalField('rating', max_digits=20, decimal_places=0)
    author_id=models.DecimalField('author_id', max_digits=20, decimal_places=0)

class QuestionTags(models.Model):
    tag_id=models.DecimalField('tag_id', max_digits=20, decimal_places=0)
    question_id=models.DecimalField('question_id', max_digits=20, decimal_places=0)

class VoteForAnswers(models.Model):
    user_id=models.DecimalField('user_id', max_digits=20, decimal_places=0)
    answer_id=models.DecimalField('answer_id', max_digits=20, decimal_places=0)
    voted=models.BooleanField('voted', default=False)

class VoteForQuestion(models.Model):
    user_id=models.DecimalField('user_id', max_digits=20, decimal_places=0)
    question_id=models.DecimalField('question_id', max_digits=20, decimal_places=0)
    voted=models.BooleanField('voted', default=False)
