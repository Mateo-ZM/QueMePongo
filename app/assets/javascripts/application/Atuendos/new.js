Paloma.controller('Atuendos', {
    new: function(){

            window.addEventListener("load", theDomHasLoaded);
        }
    });

        function theDomHasLoaded() 
        {
            atuendos_new_torso = document.querySelectorAll(".card_atuendos_new_torso");
            atuendos_new_piernas = document.querySelectorAll(".card_atuendos_new_piernas");
            atuendos_new_pies = document.querySelectorAll(".card_atuendos_new_pies");
            atuendos_new_accesorio = document.querySelectorAll(".card_atuendos_new_accesorio");

            //Inicializo Torso

            let id_torso_inicial = document.querySelectorAll('div.prenda_torso_inicial')
            let cadena_inicial_torso = "<option value= " + id_torso_inicial[0].innerHTML +"></option>"
            atuendos_new_torso[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena_inicial_torso;
            //id_torso_inicial[0].parentElement.parentElement.style.border = "thick double #1B8F88" 
            id_torso_inicial.forEach(Node => {
                Node.parentElement.parentElement.style.border = "thick double #1B8F88"
            })
            
            //Inicializo piernas

            let id_piernas_inicial = document.querySelectorAll('div.prenda_piernas_inicial')
            let cadena_inicial_piernas = "<option value= " + id_piernas_inicial[0].innerHTML +"></option>"
            atuendos_new_piernas[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena_inicial_piernas;
            id_piernas_inicial.forEach(Node => {
                Node.parentElement.parentElement.style.border = "thick double #1B8F88"
            }) 

            //Inicializo pies

            let id_pies_inicial = document.querySelectorAll('div.prenda_pies_inicial')
            let cadena_inicial_pies = "<option value= " + id_pies_inicial[0].innerHTML +"></option>"
            atuendos_new_pies[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena_inicial_pies;
            id_pies_inicial.forEach(Node => {
                Node.parentElement.parentElement.style.border = "thick double #1B8F88"
            }) 

            //Inicializo accesorio

            let id_accesorio_inicial = document.querySelectorAll('div.prenda_accesorios_inicial')
            let cadena_inicial_accesorio = "<option value= " + id_accesorio_inicial[0].innerHTML +"></option>"
            atuendos_new_accesorio[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena_inicial_accesorio;
            id_accesorio_inicial.forEach(Node => {
                Node.parentElement.parentElement.style.border = "thick double #1B8F88"
            }) 

            let boton = document.querySelector('button.form-control');
            //boton.disabled = true;

            Seleccionar_Torso()
            Seleccionar_Piernas()
            Seleccionar_Pies()
            Seleccionar_Accesorio()

        function comprobar_todas_opciones_seleccionadas()
        {
            let boton = document.querySelector('button.form-control');
            let id_torso = atuendos_new_torso[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].value;
            let id_piernas = atuendos_new_piernas[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].value;
            let id_pies = atuendos_new_pies[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].value;
            let id_accesorio = atuendos_new_accesorio[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].value;

            if(id_torso != "" && id_piernas != "" && id_pies != "" && id_accesorio != "") {
                boton.disabled = false;
            }
        }

        


        function Seleccionar_Torso()
        {
            atuendos_new_torso.forEach(Node => {
                Node.addEventListener("click",  ()=>{  
                    Node.style.border = "thick double #1B8F88" 
                    for(var i = 0; i < atuendos_new_torso.length; i++)
                    {
                        if(atuendos_new_torso[i] != Node)
                        {
                            atuendos_new_torso[i].style.border = ""
                        }
                        else
                        {
                            let id = atuendos_new_torso[i].children[2].innerHTML;
                            let cadena = "<option value=" + id +"></option>"
                            atuendos_new_torso[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena;
                        }
                    }
                    comprobar_todas_opciones_seleccionadas()
                })
            });
        }


        function Seleccionar_Piernas()
        {
            atuendos_new_piernas.forEach(Node => {
                Node.addEventListener("click",  ()=>{  
                    Node.style.border = "thick double #1B8F88" 
                    for(var i = 0; i < atuendos_new_piernas.length; i++)
                    {
                        if(atuendos_new_piernas[i] != Node)
                        {
                            atuendos_new_piernas[i].style.border = ""
                        }
                        else
                        {
                            let id = atuendos_new_piernas[i].children[2].innerHTML;
                            let cadena = "<option value=" + id +"></option>"
                            atuendos_new_piernas[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena;
                        }
                    }
                    comprobar_todas_opciones_seleccionadas()
                })
            });
        }

        function Seleccionar_Pies()
        {
            atuendos_new_pies.forEach(Node => {
                Node.addEventListener("click",  ()=>{  
                    Node.style.border = "thick double #1B8F88" 
                    for(var i = 0; i < atuendos_new_pies.length; i++)
                    {
                        if(atuendos_new_pies[i] != Node)
                        {
                            atuendos_new_pies[i].style.border = ""
                        }
                        else
                        {
                            let id = atuendos_new_pies[i].children[2].innerHTML;
                            let cadena = "<option value=" + id +"></option>"
                            atuendos_new_pies[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena;
                        }
                    }
                    comprobar_todas_opciones_seleccionadas()
                })
            });
        }

        function Seleccionar_Accesorio()
        {
            atuendos_new_accesorio.forEach(Node => {
                Node.addEventListener("click",  ()=>{  
                    Node.style.border = "thick double #1B8F88" 
                    for(var i = 0; i < atuendos_new_accesorio.length; i++)
                    {
                        if(atuendos_new_accesorio[i] != Node)
                        {
                            atuendos_new_accesorio[i].style.border = ""
                        }
                        else
                        {
                            let id = atuendos_new_accesorio[i].children[2].innerHTML;
                            let cadena = "<option value=" + id +"></option>"
                            atuendos_new_accesorio[0].parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.nextElementSibling.children[0].innerHTML = cadena;
                        }
                    }
                    comprobar_todas_opciones_seleccionadas()
                })
            });
        }
    }