# myapp/models.py
from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth.models import AbstractUser, Group, Permission
from django.dispatch import receiver
from django.db.models.signals import post_save
from django.contrib.auth.models import User as AuthUser

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

class User(AbstractUser):
    User_Id= models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID', db_column='User_Id')
    firstname = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    streetaddress = models.CharField(max_length=255)
    city = models.ForeignKey(City, on_delete=models.CASCADE)
    province = models.ForeignKey(Province, on_delete=models.CASCADE)
    zipcode = models.CharField(max_length=10)
    email = models.EmailField(max_length=254)
    mobile = models.CharField(max_length=20)
    username = models.CharField(max_length=150, unique=True)
    password = models.CharField(max_length=128)
    groups = models.ManyToManyField(Group, related_name='custom_users')
    user_permissions = models.ManyToManyField(Permission, related_name='custom_users')


@receiver(post_save, sender=User)
def create_auth_user(sender, instance=None, created=False, **kwargs):
    if created:
        AuthUser.objects.create(username=instance.username, password=instance.password,first_name=instance.firstname,last_name=instance.lastname)




    


