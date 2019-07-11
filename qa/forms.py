from django import forms

class SignUpForm(forms.Form):
    login = forms.CharField(label='Login')
    email = forms.CharField(label='Email')
    password = forms.CharField(label='Password')
    repeat_password = forms.CharField(label='Repeat password')

class AskQuestionForm(forms.Form):
    title = forms.CharField(label='title')
    text = forms.CharField(label='text')
    tags = forms.CharField(label='tags')
