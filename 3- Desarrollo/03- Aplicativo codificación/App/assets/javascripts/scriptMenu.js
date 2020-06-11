//Menú dropDown
const disparadorMenuH = document.getElementById('li--item--userName');
const menuHorizontal =  document.getElementById('ul--menu--dropDown--hidden');
const divRow = document.getElementById('div--row--up');

disparadorMenuH.addEventListener('click', mostrar_drop_down_menu);

function mostrar_drop_down_menu (){
    if(menuHorizontal.classList.contains('ul--menu--dropDown--hidden')){

        menuHorizontal.classList.remove('ul--menu--dropDown--hidden'); 
        menuHorizontal.classList.add('ul--menu--dropDown--visible');
    }else{

        menuHorizontal.classList.remove('ul--menu--dropDown--visible'); 
        menuHorizontal.classList.add('ul--menu--dropDown--hidden');
    }
    divRow.classList.toggle('div--row--down');
}

//Menú vertical -  dashboard

const disparadorMenuV = document.getElementById('div--logo');
const ulMenuHorizontal = document.getElementById('ul--menu--1');
const pLogo = document.getElementById('p--logo');
const ulMenuVertical = document.getElementById('ul--menu2--close');
const liElements = document.getElementsByClassName('li--item');
const sectionResultados = document.getElementById('section--container');
const divHamburger = document.getElementById('divHamburger');

disparadorMenuV.addEventListener('click', expandir_menu_vertical);

function expandir_menu_vertical()
{
    ulMenuHorizontal.classList.toggle('ul--menu--open');
    disparadorMenuV.classList.toggle('div--logo--open');
    pLogo.classList.toggle('p--logo--open');
    ulMenuVertical.classList.toggle('ul--menu2--open');
    sectionResultados.classList.toggle('section--container--full');
    divHamburger.classList.toggle('div--menu-btn--x');
    
}

//Abrir filtro de opciones

const liFilter = document.getElementById('liFilter');
const ulSubMenuFilter = document.getElementById('ulSumMenuFiltro');

liFilter.addEventListener('click', abrirFiltro);

function abrirFiltro()
{
    liFilter.classList.toggle('li--itemFilter--active');
    ulSubMenuFilter.classList.toggle('ul--subMenu--visible');
}