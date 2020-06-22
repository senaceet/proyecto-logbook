from django.shortcuts import redirect
from django.shortcuts import render
from django.contrib.auth import authenticate
from django.contrib.auth import login
from django.contrib.auth import logout
from django.contrib import messages

def index(request):
    return render(request,'index.html',{
    })

def login_form_view(request):
    if request.method == 'POST':
        username  = request.POST.get('user')
        password = request.POST.get('password')
        
        userData = authenticate(username = username, password = password)

        if userData:
            login(request,userData)
            messages.success(request, 'Bienvenido {}'.format(userData.username))
            return redirect('dashboard')
        else:
            messages.error(request,'Ups! Algo salió mal')
            
    return render(request, 'loggin.html')

def dashboard_view(request):
    return render(request, 'dashboard.html')


def log_out(request):
    logout(request)
    return redirect('login')

def registro(request):
    return render(request, 'form.html',{

     })

def restoreAccount(request):
    return render(request, 'recuperarCuenta.html')
