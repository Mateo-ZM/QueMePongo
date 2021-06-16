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