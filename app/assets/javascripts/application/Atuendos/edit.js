Paloma.controller('Atuendos', {
    edit: function(){
            window.addEventListener("load", theDomHasLoaded);

        function inicializarParte(parte)
        {
            let atuendos_new_parte = document.querySelectorAll(`.card_atuendos_new_${parte}`);
            let id_parte_inicial = document.querySelectorAll(`div.prenda_${parte}_inicial`)
            let cadena_inicial = "<option value= " + id_parte_inicial[0].innerHTML +"></option>"
            atuendos_new_parte[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena_inicial; 
            id_parte_inicial.forEach(node => {
                node.parentElement.parentElement.style.border = "0.5rem solid  #1B8F88"
            })
        }
        function theDomHasLoaded() 
        {
            //Inicializo Torso

            inicializarParte('torso');
            
            //Inicializo piernas

            inicializarParte('piernas'); 

            //Inicializo pies

            inicializarParte('pies'); 

            //Inicializo accesorio

            inicializarParte('accesorios');

            seleccionar_Parte('torso')
            seleccionar_Parte('piernas')
            seleccionar_Parte('pies')
            seleccionar_Parte('accesorios')
        }

        function seleccionar_Parte(parte)
        {
            let atuendos_new_parte = document.querySelectorAll(`.card_atuendos_new_${parte}`);
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
                            atuendos_new_parte[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena;
                        }
                    }
                    comprobar_Todas_Opciones_Seleccionadas()
                })
            });
        }
    }
});