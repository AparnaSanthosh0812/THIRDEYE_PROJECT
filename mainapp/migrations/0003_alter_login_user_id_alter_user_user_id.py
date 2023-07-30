# Generated by Django 4.2.3 on 2023-07-30 14:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0002_alter_login_user_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='login',
            name='User_Id',
            field=models.OneToOneField(db_column='User_Id', on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mainapp.user'),
        ),
        migrations.AlterField(
            model_name='user',
            name='User_Id',
            field=models.BigAutoField(auto_created=True, db_column='User_Id', primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
