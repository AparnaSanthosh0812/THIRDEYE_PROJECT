

# myapp/views.py
from django.shortcuts import render, redirect
from .forms import SellerRegistrationForm
from django.db import connection
from mainapp.views import sellerlogin
import logging
from django.contrib.auth import authenticate, login


def sellersignup(request):
    if request.method == 'POST':
        form = SellerRegistrationForm(request.POST)
        if form.is_valid():
            user = form.save()
            return redirect('sellerlogin.html')  # Replace 'login' with your login URL name
    else:
        form = SellerRegistrationForm()
    return render(request, 'sellersignup.html', {'form': form})

def home(request):
    return render(request,'Index.html')

def sellerlogin(request):
    if request.method == 'POST':
        logger = logging.getLogger('seller')
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        logger.debug(f'Attempting login for user: {username}')
        if user is not None:
            logger.info(f'User {username} successfully authenticated.')
            return redirect('SellerHome.html')  # Redirect to the homepage after successful login
        else:
            logger.warning(f'Failed login attempt for user: {username}')
            return render(request, 'sellerlogin.html', {'error_message': 'Invalid credentials'})
    return render(request, 'sellerlogin.html')
  


