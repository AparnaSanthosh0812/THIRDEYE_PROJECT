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

class seller(models.Model):
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
    User_Id = models.OneToOneField(seller, primary_key=True, on_delete=models.CASCADE,db_column='User_Id')
    username = models.CharField(max_length=150, unique=True)
    password = models.CharField(max_length=128)

'''class category(models.Model):
    category_Id= models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')
    category_name = models.CharField(max_length=100)
    def __str__(self):
        return self.name'''

class Category(models.Model):
    name = models.CharField(max_length=100)
    def __str__(self):
        return self.name


class addproduct(models.Model):
    # fields of the model
    Product_Id = models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID', db_column='Product_Id')
    product_name = models.CharField(max_length = 100)
    description = models.TextField(max_length = 200)
    price = models.TextField(max_length = 200)
    quantity = models.CharField(max_length=20)
    image = models.ImageField(upload_to='images/', blank=True, null=True)
    category =  models.ForeignKey(Category, on_delete=models.CASCADE)

    # renames the instances of the model
    # with their title name
    #def __str__(self):
       # return self.title




    



