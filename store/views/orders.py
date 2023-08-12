from django.shortcuts import render, redirect
from django.contrib.auth.hashers import check_password
from store.models.customer import Customer
from django.views import View
from store.models.product import Products
from store.models.orders import Order
from store.middlewares.auth import auth_middleware
import logging

class OrderView(View):


    def get(self , request ):
        logger = logging.getLogger('store')
        customer = request.session.get('customer')
        logger.info(f'Orders viewed succesfully ')
        orders = Order.get_orders_by_customer(customer)
        print(orders)
        return render(request , 'orders.html'  , {'orders' : orders})
