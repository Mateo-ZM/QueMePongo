// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs

//= require_tree ./application

window.addEventListener("load", ClimaYVariables);
function ClimaYVariables()
{


    var xhr = new XMLHttpRequest();

    xhr.open('GET', 'http://api.openweathermap.org/data/2.5/weather?q=Buenos Aires&appid=c2e8f8aee7f46d429a8d82dd755b236b&lang=es&units=metric', true);
    
    xhr.onload = function(){
        document.getElementById('clima-loader').hidden = true;
        if(this.status == 200){
            let climaResponse = JSON.parse(this.responseText);
            
            let climaDescription = climaResponse.weather[0].description + ", ";
            climaDescription += climaResponse.main.temp + "°C";
            let climaIcon = climaResponse.weather[0].icon;
            let climaHTML = `<span><img class = "nav-img" src = "https://raw.githubusercontent.com/yuvraaaj/openweathermap-api-icons/master/icons/${climaIcon}.png"></img> ${climaDescription}</span>`
            document.getElementById('clima-container').innerHTML = climaHTML;
            //<i class = "${climaIcon}"></i>
        }
    }
    
    xhr.send();

    
}

document.addEventListener("DOMContentLoaded", theDomHasLoaded);

var atuendos_new

function theDomHasLoaded() 
{
    atuendos_new_torso = document.querySelectorAll(".card_atuendos_new_torso");
    atuendos_new_piernas = document.querySelectorAll(".card_atuendos_new_piernas");
    atuendos_new_pies = document.querySelectorAll(".card_atuendos_new_pies");
    atuendos_new_accesorio = document.querySelectorAll(".card_atuendos_new_accesorio");


    Seleccionar_Torso()
    Seleccionar_Piernas()
    Seleccionar_Pies()
    Seleccionar_Accesorio()
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
            }
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
            }
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
            }
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
            }
        })
    });
}




//var confirmar_volver = prompt("Seguro que desea volver sin guardar?");