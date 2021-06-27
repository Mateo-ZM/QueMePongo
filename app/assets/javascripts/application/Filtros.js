function eliminarFiltros()
{
    let select_puntaje = document.querySelector('.select_puntaje');
    let select_formalidad = document.querySelector('.select_formalidad');
    let select_estacion = document.querySelector('.select_estacion');
    let select_dianoche = document.querySelector('.select_horario');
    let select_orden = document.querySelector('.select_orden');

    select_puntaje.selectedIndex = 0;
    select_formalidad.selectedIndex = 0;
    select_estacion.selectedIndex = 0;
    select_dianoche.selectedIndex = 0;
    select_orden.selectedIndex = 0;
}

function filtro(nombreParametro, valor){

    const parser = new URL(window.location);
    let select_puntaje = document.querySelector('.select_puntaje');
    let select_formalidad = document.querySelector('.select_formalidad');
    let select_estacion = document.querySelector('.select_estacion');
    let select_dianoche = document.querySelector('.select_horario');
    let select_orden = document.querySelector('.select_orden');


    //select_formalidad.selectedIndex = indiceFormalidad;
    //select_estacion.selectedIndex = indiceEstacion;
    //select_dianoche.selectedIndex = indiceDiaNoche;
    //select_orden.selectedIndex = indiceOrden;

    switch (nombreParametro) {
        case 1:
            parser.searchParams.set("Puntaje", valor);
            break;
        case 2:
            parser.searchParams.set("Formalidad", valor);
            break;
        case 3:
            if(valor != "SegunClimaActual")
                parser.searchParams.set("Estacion", valor);
            else{
                var temperatura = climaTemp;
                if (temperatura > 25) {
                    parser.searchParams.set("Estacion", "Verano");
                
                } else if (temperatura < 25 && temperatura > 20) {
                    parser.searchParams.set("Estacion", "Primavera");
        
                } else if (temperatura < 20 && temperatura > 15){
                    parser.searchParams.set("Estacion", "Otonio");
                }
                else{
                    parser.searchParams.set("Estacion", "Invierno");
                }
            }
            break;
        case 4:
            parser.searchParams.set("DiaNoche", valor);
            break;
        case 5:
            parser.searchParams.set("orden", valor);
            break;
    
        default:
            break;
    }
    window.location = parser.href;
}

