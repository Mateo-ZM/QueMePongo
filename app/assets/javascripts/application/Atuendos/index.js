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
        
            switch (puntaje) {
                case 1:
                    indicePuntaje = 1;
                    break;
        
                case 2:
                    indiceFormalidad = 2;
                    break;
                
                case 3:
                    indiceFormalidad = 2;
                    break;
                case 4:
                    indiceFormalidad = 2;
                    break;
                case 5:
                    indiceFormalidad = 2;
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
                    break;
        
                case "Informal":
                    indiceFormalidad = 2;
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
                    break;
        
                case "Invierno":
                    indiceEstacion = 2;
                    break;
        
                case "Otonio":
                    indiceEstacion = 3;
                    break;
                case "Primavera":
                    indiceEstacion = 4;
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
                    break;
        
                case "Noche":
                    indiceDiaNoche = 2;
                    break;
        
                case null:
                    indiceDiaNoche = 0;
                    break;
        
                default:
                    indiceDiaNoche = 0;
                    break;
            }
        
            switch (orden) {
                case "AZ":
                    indiceOrden = 1;
                    break;
        
                case "ZA":
                    indiceOrden = 2;
                    break;
        
                case "Mayor puntaje":
                indiceOrden = 3;
                break;
        
                case "Menor puntaje":
                indiceOrden = 4;
                break;
        
                case null:
                indiceOrden = 0;
                break;
        
                default:
                    indiceOrden = 0;
                break;
            }
        
            let select_puntaje = document.querySelector('.select_puntaje');
            let select_formalidad = document.querySelector('.select_formalidad');
            let select_estacion = document.querySelector('.select_estacion');
            let select_dianoche = document.querySelector('.select_horario');
            let select_orden = document.querySelector('.select_orden');
        
            select_puntaje.selectedIndex = puntaje;
            select_formalidad.selectedIndex = indiceFormalidad;
            select_estacion.selectedIndex = indiceEstacion;
            select_dianoche.selectedIndex = indiceDiaNoche;
            select_orden.selectedIndex = indiceOrden;
        }
    }
});