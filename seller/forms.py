
# seller/forms.py
from django import forms
from .models import seller,City, addproduct, Category

class SellerRegistrationForm(forms.ModelForm):
    username = forms.CharField(max_length=20)
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = seller
        city = forms.ModelChoiceField(queryset=City.objects.all(), empty_label='Select City', to_field_name='name')
        fields = ['firstname', 'lastname', 'streetaddress', 'city', 'province', 'zipcode', 'email', 'mobile']
        
class AddProductForm(forms.ModelForm):
    class Meta:
        model = addproduct 
        category = forms.ModelChoiceField(queryset=Category.objects.all(), empty_label='Select Category', to_field_name='category')
        fields = ['product_name', 'description', 'price', 'quantity','category']
