from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
app_name = 'qa'
urlpatterns = [
    path('ask', views.index),
    path('ask/question', views.ask_question),
    path('question', views.answer_question),
    path('search', views.search_question),
    path('tag', views.search_tag),
    path('signup', views.signup),
    path('login', views.login),
    path('settings', views.settings),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
