# myapp/urls.py
from django.urls import path,include
from . import views
app_name = 'mainapp'

urlpatterns = [
    path('Index.html', views.home, name='index'),
    path('', views.home, name='home'),
    path('registration.html', views.register, name='register'),
    path('sellerlogin.html', views.sellerlogin, name='sellerlogin'),
    path('login.html', views.login, name='login'),
    path('seller/', include(('seller.urls', 'seller'), namespace='seller')),
]
