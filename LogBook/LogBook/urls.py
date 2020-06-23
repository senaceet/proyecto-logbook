from django.config import settings
from django.config.url.static import static

from django.contrib import admin
from django.urls import path
from django.contrib.auth.decorators import login_required
from . import views

urlpatterns = [
    path('home', views.index, name = 'index'),
    path('usuarios/registro', views.registroUsuario, name = 'registroUsuario'),
    path('usuarios/login', views.login_form_view, name = 'login'),
    path('usuarios/logout', views.log_out, name= 'logout'),
    path('usuarios/recuperarCuenta', views.restoreAccount, name= 'recuperarCuenta'),
    path('usuarios/dashboard/home', login_required(views.dashboard_view), name = 'dashboard'),
    path('usuarios/dashboard/crearUsuario', login_required(views.crearUsuario), name = 'crearUsuario'),
    path('usuarios/dashboard/configPerfil', login_required(views.configPerfil), name = 'configPerfil'),
    path('usuarios/dashboard/enviarOpinion', login_required(views.enviarOpinion), name = 'enviarOpinion'),
    path('admin/', admin.site.urls),
] + static(settings.STATIC_URL, document_root = settings.STATIC_ROOT)