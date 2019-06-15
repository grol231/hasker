from django.http import HttpResponse
from django.template import loader, Context

def index(request):
    template = loader.get_template('qa/index.html')
    print('template found')
    context = {}#Context({'blog_entries': ['title':'blog', 'body':'blog-body']})
    html = template.render(context, request)
    return HttpResponse(html)

def ask_question(request):
    html = '<html><body>ask question</body></html>'
    return HttpResponse(html)

def answer_question(request):
    html = '<html><body>answer question</body></html>'
    return HttpResponse(html)

def search_question(request):
    html = '<html><body>search question</body></html>'
    return HttpResponse(html)

def search_tag(request):
    html = '<html><body>search tag</body></html>'
    return HttpResponse(html)

def signup(request):
    html = '<html><body>signup</body></html>'
    return HttpResponse(html)

def login(request):
    html = '<html><body>login</body></html>'
    return HttpResponse(html)

def settings(request):
    html = '<html><body>settings</body></html>'
    return HttpResponse(html)
