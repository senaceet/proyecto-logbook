//Menú horizontal
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

//Menú vertical

const disparadorMenuV = document.getElementById('div--logo');
const ulMenuHorizontal = document.getElementById('ul--menu--1');
const pLogo = document.getElementById('p--logo');
const ulMenuVertical = document.getElementById('ul--menu2--open');
const liElements = document.getElementsByClassName('li--item');
const sectionResultados = document.getElementById('section--container');

disparadorMenuV.addEventListener('click', expandir_menu_vertical);

function expandir_menu_vertical()
{
    ulMenuHorizontal.classList.toggle('ul--menu--min');
    disparadorMenuV.classList.toggle('div--logo--min');
    pLogo.classList.toggle('p--logo--min');
    ulMenuVertical.classList.toggle('ul--menu2--close');
    sectionResultados.classList.toggle('section--container--full');
}



/*
disparadorMenuH.addEventListener('click', expandir_menu_vertical);

function expandir_menu_vertical(){
    //Recorrer todos los elementos li hijos de ul
for(let i = 0; i < liElements.length; i++ ){
    let elements = liElements[i];   

    if (elements.classList.contains('li--item'))
    {
        elements.classList.remove('li--item');
        elements.classList.add('li--item--visible');
    }else
    {
        elements.classList.remove('li--item--visible');
        elements.classList.add('li--item')
        }//else
    }//For
}//Function

*/