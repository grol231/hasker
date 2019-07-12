from django.db import models

class Users(models.Model):
    login=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    password=models.CharField(max_length=100)
    photo=models.ImageField()
    date_time=models.DateTimeField()

class Tags(models.Model):
    label=models.CharField(max_length=100)

class Questions(models.Model):
    author=models.ForeignKey(Users, on_delete=models.CASCADE)
    title=models.CharField(max_length=200)
    context=models.TextField()
    date_time=models.DateTimeField()
    rating=models.IntegerField()
    tags=models.ManyToManyField(Tags)

class Answers(models.Model):
    question=models.ForeignKey(Questions, on_delete=models.CASCADE)
    date_time=models.DateTimeField()
    correct=models.BooleanField(default=False)
    rating=models.IntegerField()
    author=models.ForeignKey(Users, on_delete=models.CASCADE)

class AnswerVote(models.Model):
    answer=models.ForeignKey(Answers, on_delete=models.CASCADE)
    user=models.ForeignKey(Users, on_delete=models.CASCADE)
    voted=models.BooleanField(default=False)

class QuestionVote(models.Model):
    question=models.ForeignKey(Questions, on_delete=models.CASCADE)
    user=models.ForeignKey(Users, on_delete=models.CASCADE)
    voted=models.BooleanField(default=False)
