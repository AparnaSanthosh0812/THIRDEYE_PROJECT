# myapp/models.py
from django.db import models

class Province(models.Model):
    Province_Id= models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')
    name = models.CharField(max_length=100)
    def __str__(self):
        return self.name

class City(models.Model):
    City_Id= models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')
    name = models.CharField(max_length=100)
    def __str__(self):
        return self.name

class User(models.Model):
    User_Id= models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID', db_column='User_Id')
    firstname = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    streetaddress = models.CharField(max_length=255)
    city = models.ForeignKey(City, on_delete=models.CASCADE)
    province = models.ForeignKey(Province, on_delete=models.CASCADE)
    zipcode = models.CharField(max_length=10)
    email = models.EmailField(max_length=254)
    mobile = models.CharField(max_length=20)

class Login(models.Model):
    User_Id = models.OneToOneField(User, primary_key=True, on_delete=models.CASCADE,db_column='User_Id')
    username = models.CharField(max_length=150, unique=True)
    password = models.CharField(max_length=128)
    status = models.IntegerField()


    


