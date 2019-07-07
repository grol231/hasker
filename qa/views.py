from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader, Context
from django.shortcuts import render
from .forms import SignUpForm, AskQuestionForm
from .models import Users, Questions, Tags

def index(request):
    template = loader.get_template('qa/index.html')
    print('template found')
    array = {'array':[1,2,3,4,5]}
    html = template.render(array, request)
    return HttpResponse(html)

#def ask_question(request):
#    if request.method == 'POST':
#        print('This is POST')
#        form = AskQuestionForm(request.POST)
#        if form.is_valid():
#            print('form is valid')
#            Questions.objects.create(content=form.cleaned_data('content'), author=form.cleaned_data('author'), title=form.cleaned_date('title'), question_date=form.cleaned_data('question_date'))
#            tags_str = form.cleaned_data('tags')
#            tags = ['tag1']  #tags_str.split(',')
#            for tag in tags:
#                Tags.object.create(label=tag)            
#    return render(request, 'qa/ask_question.html', {'form': form, 'array':[1,2,3,4,5]}

def answer_question(request):
    template = loader.get_template('qa/answer_question.html')
    print('template found')
    array = {'array':[1,2,3,4,5]}
    html = template.render(array)
    return HttpResponse(html)

def search_question(request):
    template = loader.get_template('qa/search_question.html')
    print('template found')
    array = {'array':[1,2,3,4,5]}
    html = template.render(array)
    return HttpResponse(html)

def search_tag(request):
    template = loader.get_template('qa/search_tag.html')
    print('template found')
    array = {'array':[1,2,3,4,5]}
    html = template.render(array)
    return HttpResponse(html)

def signup(request):
    if request.method == 'POST':
        print(request.POST)
        form = SignUpForm(request.POST)
        if form.is_valid():
            print('form is valid')
            print(form.cleaned_data['login'])
            print(form.cleaned_data['email'])
            print(form.cleaned_data['password'])
            print(form.cleaned_data['repeat_password'])
            print('form is valid')
            first_user = Users.objects.create(email=form.cleaned_data['email'], login=form.cleaned_data['login'], password=form.cleaned_data['password'], photo=form.cleaned_data['repeat_password']) 
            return HttpResponseRedirect('/hasker/login')
    else:
        form = NameForm()
    return render(request, 'qa/sign_up.html', {'form': form, 'array':[1,2,3,4,5]})

def login(request):
    template = loader.get_template('qa/log_in.html')
    print('template found')
    array = {'array':[1,2,3,4,5]}
    html = template.render(array)
    return HttpResponse(html)

def settings(request):
    template = loader.get_template('qa/user_settings.html')
    print('template found')
    array = {'array':[1,2,3,4,5]}
    html = template.render(array)
    return HttpResponse(html)
