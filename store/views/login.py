from django.shortcuts import render , redirect , HttpResponseRedirect
from django.contrib.auth.hashers import  check_password
from store.models.customer import Customer
from django.views import View
import logging


class Login(View):
    return_url = None
    

    def get(self, request):
        Login.return_url = request.GET.get ('return_url')
        return render (request, 'login.html')

    def post(self, request):
        logger = logging.getLogger('store')
        email = request.POST.get ('email')
        password = request.POST.get ('password')
        customer = Customer.get_customer_by_email (email)
        error_message = None
        if customer:
            logger.debug(f'Attempting login for user: {customer.first_name+" "+customer.last_name}')
            flag = check_password (password, customer.password)
            if flag:
                logger.info(f'User {customer.first_name+" "+customer.last_name} successfully authenticated.')
                request.session['customer'] = customer.id
                logger.info(f'User {customer.first_name+" "+customer.last_name} redirected to Homepage')

                if Login.return_url:
                    return HttpResponseRedirect (Login.return_url)
                else:
                    Login.return_url = None
                    return redirect ('homepage')
            else:
                logger.warning(f'Failed login attempt for user: {customer.first_name+" "+customer.last_name}')
                error_message = 'Invalid !!'
        else:
            logger.warning(f'Failed login attempt for user: {customer.first_name+" "+customer.last_name}')
            error_message = 'Invalid !!'

        print (email, password)
        return render (request, 'login.html', {'error': error_message})

def logout(request):
    logger = logging.getLogger('store')
    logger.info('user successfully logged out.')
    request.session.clear()
    return redirect('login')
