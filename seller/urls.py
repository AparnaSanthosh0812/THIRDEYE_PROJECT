# myapp/urls.py
from django.urls import path
from . import views

urlpatterns = [
    
    path('sellersignup.html', views.sellersignup, name='sellersignup'),
   
]
