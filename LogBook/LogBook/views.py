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
    return render(request, 'homeDashboard.html',{
        'nombre': 'Juan',
        'apellido': 'Pepino'
    })


def log_out(request):
    logout(request)
    return redirect('login')

def registroUsuario(request):
    if request.method == 'POST':
        firstName  = request.POST.get('first-name')
        secondName = request.POST.get('second-name')
        firstLastName = request.POST.get('first-last-name')
        secondLastName = request.POST.get('second-last-name')
        userEmail = request.POST.get('email')
        userAge = request.POST.get('age')
        userCode = request.POST.get('code')
        Password = request.POST.get('password')
        confirmPassword = request.POST.get('confirmPassword')
        if Password ==  confirmPassword:
            userPassword = confirmPassword
        else:
            messages.error(request,'Las contraseñas no son iguales.')
    return render(request, 'form.html')

def restoreAccount(request):
    return render(request, 'recuperarCuenta.html')

def crearUsuario(request):
    return render(request,'crearUsuario.html')

def configPerfil(request):
    return render(request,'configPerfil.html')

def enviarOpinion(request):
    return render(request,'FormOpiniones.html')