from django.contrib import admin
from django.urls import path
from django.contrib.auth.decorators import login_required
from . import views

urlpatterns = [
    path('home', views.index, name = 'index'),
    path('usuarios/login', views.login_form_view, name = 'login'),
    path('usuarios/logout', views.log_out, name= 'logout'),
    path('usuarios/recuperarCuenta', views.restoreAccount, name= 'recuperarCuenta'),
    path('usuarios/registro', views.registro, name= 'registro'),
    path('usuarios/dashboard', login_required(views.dashboard_view), name = 'dashboard'),
    path('admin/', admin.site.urls),
]