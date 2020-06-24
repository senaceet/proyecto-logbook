from django.contrib import admin
from django.urls import path
from django.contrib.auth.decorators import login_required
from . import views
#login_required()
urlpatterns = [
    path('home', views.index, name = 'index'),
    path('usuarios/registro', views.registroUsuario, name = 'registroUsuario'),
    path('usuarios/login', views.login_form_view, name = 'login'),
    path('usuarios/logout', views.log_out, name= 'logout'),
    path('usuarios/recuperarCuenta', views.restoreAccount, name= 'recuperarCuenta'),
    path('usuarios/dashboard/home', views.dashboard_view, name = 'dashboard'),
    path('usuarios/dashboard/crearUsuario', views.crearUsuario, name = 'crearUsuario'),
    path('usuarios/dashboard/configPerfil', views.configPerfil, name = 'configPerfil'),
    path('usuarios/dashboard/enviarOpinion', views.enviarOpinion, name = 'enviarOpinion'),
    path('admin/', admin.site.urls),
]