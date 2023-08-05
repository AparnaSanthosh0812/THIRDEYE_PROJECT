
# seller/forms.py
from django import forms
from .models import seller,Login,City

class SellerRegistrationForm(forms.ModelForm):
    username = forms.CharField(max_length=20)
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = seller
        city = forms.ModelChoiceField(queryset=City.objects.all(), empty_label='Select City', to_field_name='name')
        fields = ['firstname', 'lastname', 'streetaddress', 'city', 'province', 'zipcode', 'email', 'mobile']
        


