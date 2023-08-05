

# myapp/views.py
from django.shortcuts import render, redirect
from .forms import SellerRegistrationForm
from django.db import connection


def sellersignup(request):
    if request.method == 'POST':
        form = SellerRegistrationForm(request.POST)
        if form.is_valid():
            user = form.save()
            return redirect('login')  # Replace 'login' with your login URL name
    else:
        form = SellerRegistrationForm()
    return render(request, 'sellersignup.html', {'form': form})
  


