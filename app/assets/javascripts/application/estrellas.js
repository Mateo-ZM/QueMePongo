

function inicializarEstrellas()
{
    let selector_puntaje = document.querySelectorAll("div.puntaje");
    let puntaje = selector_puntaje[0].children[0].children[0].value;

    estrellas(puntaje);
}

function estrellas(num)
{
    let estrellas_seleccionadas = [];
    let estrellas_no_seleccionadas = [];

    for (let i = 5; i > 0; i--) {
        if(num >= i)
        {
            estrellas_seleccionadas.push ( document.querySelector(`.estrella-${i}`) );
        }
    }
    for (let i = 1; i <= 5; i++) {
        if(num < i)
        {
            estrellas_no_seleccionadas.push( document.querySelector(`.estrella-${i}`) );
        }
        
    }

    estrellas_seleccionadas.forEach(estrella => {
        estrella.classList.add("estrella-amarilla");
    });

    estrellas_no_seleccionadas.forEach(estrella => {
        estrella.classList.remove("estrella-amarilla");
    });

    let selector = document.querySelectorAll("div.puntaje");
    selector[0].children[0].children[0].value = num; 
}