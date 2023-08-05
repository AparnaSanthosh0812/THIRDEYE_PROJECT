# myapp/urls.py
from django.urls import path,include
from . import views

app_name = 'seller'
urlpatterns = [
    
    path('sellersignup.html', views.sellersignup, name='sellersignup'),
    path('sellerlogin.html', views.sellerlogin, name='sellerlogin'),
    path('SellerHome.html', views.home, name='home'),
]
