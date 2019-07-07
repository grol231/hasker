from django import forms

class SignUpForm(forms.Form):
    login = forms.CharField(label='Login')
    email = forms.CharField(label='Email')
    password = forms.CharField(label='Password')
    repeat_password = forms.CharField(label='Repeat password')

class AskQuestionForm(forms.Form):
    title = forms.CharField(lable='title')
    text = forms.CharField(lable='text')
    tags = forms.CharField(lable='tags')
