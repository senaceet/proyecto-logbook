//Menú horizontal
const disparadorMenuH = document.getElementById('li--item--userName');
const menuHorizontal =  document.getElementById('ul--menu--dropDown--hidden');
const divRow = document.getElementById('div--row--up');

disparadorMenuH.addEventListener('click',function(){
    if(menuHorizontal.classList.contains('ul--menu--dropDown--hidden')){

        menuHorizontal.classList.remove('ul--menu--dropDown--hidden'); 
        menuHorizontal.classList.add('ul--menu--dropDown--visible');
    }else{

        menuHorizontal.classList.remove('ul--menu--dropDown--visible'); 
        menuHorizontal.classList.add('ul--menu--dropDown--hidden');
    }
});

//Menú vertical
