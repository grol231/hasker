from django import forms

class NameForm(forms.Form):
    login = forms.CharField(label='Login')
    email = forms.CharField(label='Email')
    password = forms.CharField(label='Password')
    repeat_password = forms.CharField(label='Repeat password')

