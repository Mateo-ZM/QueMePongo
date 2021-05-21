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

/*xhr.onprogress = function(){
    document.getElementById('clima-loader').hidden = false;
}


xhr.onerror = function(){
    document.getElementById('clima-loader').hidden = true;
    console.log('Request Error...');
}*/

xhr.send();