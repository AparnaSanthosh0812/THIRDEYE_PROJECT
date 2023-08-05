
# myapp/forms.py
from django import forms
from .models import User,City

class UserRegistrationForm(forms.ModelForm):
    username = forms.CharField(max_length=20)
    password = forms.CharField(widget=forms.PasswordInput)
    

    class Meta:
        model = User
        city = forms.ModelChoiceField(queryset=City.objects.all(), empty_label='Select City', to_field_name='name')
        fields = ['firstname', 'lastname', 'streetaddress', 'city', 'province', 'zipcode', 'email', 'mobile','username','password']
    def save(self, commit=True):
        user = super().save(commit=False)
        password = self.cleaned_data['password']
        user.set_password(password)
        if commit:
            user.save()
        return user

        


