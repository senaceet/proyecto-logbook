let consejos = new Array()

consejos [0] = 'Recuerda que puedes eliminar a varios usuarios marcandolos en la casilla.'
consejos [1] = 'No olvides opinar sobre nuestro sistema en el apartado de opiniones.'
consejos [2] = 'No olvides personalizar tu foto de perfil para que otras personas puedan reconocerte.'
consejos [3] = 'Oye, pss (También tenemos redes sociales mira abajo.)'
consejos [4] = 'Esto fue hecho por humanos, puedes ver su información abajo.'
consejos [5] = 'En la parte izquierda encontraras un menú lateral que te ayudará a tus tareas.'
consejos [6] = 'No olvides cerrar tu sesión al terminar. Y si lo olvidas, nosotros lo haremos, feliz día.'
consejos [7] = 'Noches sin dormir para que usted disfrute la pataforma, dejenos un comentario ¡No sea charro!'
consejos [8] = 'Ell@ no te ama, vuelve a trabajar, stalkear no es de diosito.'
consejos [9] = 'Si eres aprendiz no podrás  ver información de otros usuarios'
consejos [10] = 'Hola mundo :)'
consejos [11] = 'Sientdo instructor puedes buscar a otros usuarios.'

let  logitudConsejos = consejos.length;
let numConsejo = Math.round(Math.random()*(logitudConsejos - 1));

function mostrarConsejo() {
    const pBienvenida = document.getElementById('pBienvenida');
    pBienvenida.textContent = consejos[numConsejo];
}

mostrarConsejo();
