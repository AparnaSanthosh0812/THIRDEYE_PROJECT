

# myapp/views.py
from django.shortcuts import render, redirect
from .forms import UserRegistrationForm
from django.db import connection
from .models import Login

def register(request):
    if request.method == 'POST':
        form = UserRegistrationForm(request.POST)
        if form.is_valid():
            user = form.save()
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            Login.objects.create(User_Id=user, username=username, password=password)
            return redirect('login')  # Replace 'login' with your login URL name
    else:
        form = UserRegistrationForm()
    return render(request, 'registration.html', {'form': form})
  
def login(request):
    #if request.method=='POST':
       #code to be updated
    return render(request, 'login.html')
