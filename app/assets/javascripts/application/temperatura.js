function temperatura() {
    var urlParams = new URLSearchParams(window.location.search);
    var estacion;
    let select_estacion = document.querySelector(".select_estacion");
    let indiceEstacion = select_estacion.selectedIndex;


        var temperatura = climaTemp;
        if (temperatura > 25) {
            select_estacion.selectedIndex = 1;

        } else if (temperatura < 15) {
            select_estacion.selectedIndex = 2;

        } else {
            select_estacion.selectedIndex = 3;
        }

        urlParams.set("Estacion", estacion);


}

function Clima()
{
    var xhr = new XMLHttpRequest();
    var climaResponse;
    xhr.open('GET', 'http://api.openweathermap.org/data/2.5/weather?q=Buenos Aires&appid=c2e8f8aee7f46d429a8d82dd755b236b&lang=es&units=metric', true);
    xhr.send();

    if (xhr.readyState == 4) {
        climaResponse = JSON.parse(this.responseText);
    } else {
        // aun no esta listo
    }

    
    return climaResponse.main.temp;


}