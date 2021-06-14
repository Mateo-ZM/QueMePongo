Paloma.controller('Atuendos', {
    new: function(){
            window.addEventListener("load", theDomHasLoaded);
        
        function inicializarParte(parte)
        {
            let id_parte_inicial = document.querySelectorAll(`div.prenda_${parte}_inicial`)
            let selector = document.querySelectorAll(`div.select-${parte}`)
            let cadena_inicial = "<option value= " + id_parte_inicial[0].innerHTML +"></option>"

            selector[0].children[0].innerHTML = cadena_inicial; 

            id_parte_inicial.forEach(node => {
                node.parentElement.parentElement.style.border = "0.5rem solid  #1B8F88"
            })
            
        }
        function theDomHasLoaded() 
        {
            inicializarParte('torso');
            inicializarParte('piernas'); 
            inicializarParte('pies'); 
            inicializarParte('accesorios');

            seleccionar_Parte('torso')
            seleccionar_Parte('piernas')
            seleccionar_Parte('pies')
            seleccionar_Parte('accesorios')
            estrellas(0)
        }

        function seleccionar_Parte(parte)
        {
            let atuendos_new_parte = document.querySelectorAll(`.card_atuendos_new_${parte}`);
            let selector = document.querySelectorAll(`div.select-${parte}`)
            atuendos_new_parte.forEach(node => {
                node.addEventListener("click",  ()=>{  
                    node.style.border = "0.5rem solid #1B8F88" 
                    for(var i = 0; i < atuendos_new_parte.length; i++)
                    {
                        if(atuendos_new_parte[i] != node)
                        {
                            atuendos_new_parte[i].style.border = ""
                        }
                        else
                        {
                            let id = atuendos_new_parte[i].children[2].innerHTML;
                            let cadena = "<option value=" + id +"></option>"
                            selector[0].children[0].innerHTML = cadena; 
                        }
                    }
                })
            });
        }



        function estrellas(num)
        {
            selector_puntaje[0].children[0].children[0].value = 0; 
            for (let i = 5; i > 0; i--) {
                if(num >= i)
                {
                    estrellas_seleccionadas.push ( document.querySelector(`.estrella-${i}`) );
                }
            }

            estrellas_no_seleccionadas.forEach(estrella => {
                estrella.classList.remove("estrella-amarilla");
            });
        }
    }
});