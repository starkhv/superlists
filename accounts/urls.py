from django.contrib.auth.views import logout
from django.conf.urls import url

from . import views

urlpatterns = [
        url(r'^send_login_email$',
            views.send_login_email,
            name=r'send_login_email'
            ),
        url(r'^login$', views.login, name=r'login'),
        url(r'^logout$', logout, {'next_page': '/'}, name='logout'),
        ]
