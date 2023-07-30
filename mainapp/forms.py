
# myapp/forms.py
from django import forms
from .models import User,Login,City

class UserRegistrationForm(forms.ModelForm):
    username = forms.CharField(max_length=20)
    password = forms.CharField(widget=forms.PasswordInput)
    

    class Meta:
        model = User
        city = forms.ModelChoiceField(queryset=City.objects.all(), empty_label='Select City', to_field_name='name')
        fields = ['firstname', 'lastname', 'streetaddress', 'city', 'province', 'zipcode', 'email', 'mobile']
        


