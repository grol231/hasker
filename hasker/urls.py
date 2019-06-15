from django.urls import path, include
urlpatterns = [
    path('hasker/', include('qa.urls'))
]
