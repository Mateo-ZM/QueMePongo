Paloma.controller('Atuendos', {
    index: function(){
        window.addEventListener("load", atuendosIndexCargo);

        function atuendosIndexCargo()
        {
            slider();
            filtrados();
            
        }


        function filtrados()
        {
            //let contenedorFiltrosAplicados= document.querySelector('.Filtros-aplicados');
            //var nuevoElemento = `<div class="filtro">Puntaje: ${valor}</div>`
            //contenedorFiltrosAplicados.insertAdjacentHTML( 'afterbegin', nuevoElemento )

            var urlParams = new URLSearchParams(window.location.search);
        
            var puntaje = urlParams.get('Puntaje');
            var formalidad = urlParams.get('Formalidad');
            var estacion = urlParams.get('Estacion');
            var dianoche = urlParams.get('DiaNoche');
            var orden = urlParams.get('orden'); 
        
            var indicePuntaje;
            var indiceFormalidad;
            var indiceEstacion;
            var indiceDiaNoche;
            var indiceOrden;

            let select_puntaje = document.querySelector('.select_puntaje');
            let select_formalidad = document.querySelector('.select_formalidad');
            let select_estacion = document.querySelector('.select_estacion');
            let select_dianoche = document.querySelector('.select_horario');
            let select_orden = document.querySelector('.select_orden');
        
            switch (puntaje) {
                case "1":
                    indicePuntaje = 1;
                    select_puntaje.style.borderColor = "green"; 
                    break;
                case "2":
                    indiceFormalidad = 2;
                    select_puntaje.style.borderColor = "green"; 
                    break;
                case "3":
                    indiceFormalidad = 2;
                    select_puntaje.style.borderColor = "green"; 
                    break;
                case "4":
                    indiceFormalidad = 2;
                    select_puntaje.style.borderColor = "green"; 
                    break;
                case "5":
                    indiceFormalidad = 2;
                    select_puntaje.style.borderColor = "green"; 
                    break;
                case null:
                    indiceFormalidad = 0;
                    break;
        
                default:
                    indiceFormalidad = 0;
                    break;
                }
        
            switch (formalidad) {
                case "Formal":
                    indiceFormalidad = 1;
                    select_formalidad.style.borderColor = "green"; 
                    break;
        
                case "Informal":
                    indiceFormalidad = 2;
                    select_formalidad.style.borderColor = "green"; 
                    break;
        
                case null:
                    indiceFormalidad = 0;
                    break;
        
                default:
                    indiceFormalidad = 0;
                    break;
            }
        
            switch (estacion) {
                case "Verano":
                    indiceEstacion = 1;
                    select_estacion.style.borderColor = "green"; 
                    break;
                case "Invierno":
                    indiceEstacion = 2;
                    select_estacion.style.borderColor = "green";
                    break;
                case "Otonio":
                    indiceEstacion = 3;
                    select_estacion.style.borderColor = "green";
                    break;
                case "Primavera":
                    indiceEstacion = 4;
                    select_estacion.style.borderColor = "green";
                    break;
                case null:
                    indiceEstacion = 0;
                    break;
                default:
                    indiceEstacion = 0;
                    break;
            }
        
            switch (dianoche) {
                case "Dia":
                    indiceDiaNoche = 1;
                    select_dianoche.style.borderColor = "green";
                    break;
                case "Noche":
                    indiceDiaNoche = 2;
                    select_dianoche.style.borderColor = "green";
                    break;
                case null:
                    indiceDiaNoche = 0;
                    break;
                default:
                    indiceDiaNoche = 0;
                    break;
            }
        
            switch (orden) {
                case "Alfabetic. (A-Z)":
                    indiceOrden = 1;
                    select_orden.style.borderColor = "green";
                    break;
                case "Alfabetic. (Z-A)":
                    indiceOrden = 2;
                    select_orden.style.borderColor = "green";
                    break;
                case "Mayor puntaje":
                    indiceOrden = 3;
                    select_orden.style.borderColor = "green";
                    break;
                case "Menor puntaje":
                    indiceOrden = 4;
                    select_orden.style.borderColor = "green";
                    break;
                case null:
                indiceOrden = 0;
                break;
                default:
                    indiceOrden = 0;
                break;
            }
        
            select_puntaje.selectedIndex = puntaje;
            select_formalidad.selectedIndex = indiceFormalidad;
            select_estacion.selectedIndex = indiceEstacion;
            select_dianoche.selectedIndex = indiceDiaNoche;
            select_orden.selectedIndex = indiceOrden;
        }
    }
});