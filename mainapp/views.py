
import logging

# myapp/views.py
from django.shortcuts import render, redirect
from .forms import UserRegistrationForm
from django.db import connection
from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect

def register(request):
    if request.method == 'POST':
        form = UserRegistrationForm(request.POST)
        if form.is_valid():
            user = form.save()
            return redirect('login')  # Replace 'login' with your login URL name
    else:
        form = UserRegistrationForm()
    return render(request, 'registration.html', {'form': form})
  
# views.py


def login(request):
    if request.method == 'POST':
        logger = logging.getLogger('mainapp')
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        logger.debug(f'Attempting login for user: {username}')
        if user is not None:
            logger.info(f'User {username} successfully authenticated.')
            return redirect('Home.html')  # Redirect to the homepage after successful login
        else:
            logger.warning(f'Failed login attempt for user: {username}')
            return render(request, 'login.html', {'error_message': 'Invalid credentials'})
    return render(request, 'login.html')

