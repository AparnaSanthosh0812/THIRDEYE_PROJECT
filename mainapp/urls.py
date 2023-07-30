# myapp/urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('', views.register, name='register'),
    path('registration.html', views.register, name='register'),
    path('login.html', views.login, name='login'),
]
