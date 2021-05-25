document.addEventListener( 'DOMContentLoaded', function () 
{
    var elms = document.getElementsByClassName( 'splide' );

    if(elms.length > 1)
    {
        var cont = document.getElementsByClassName('contador_torso');
        let control = document.querySelectorAll("div.card_atuendos_new_torso");

        if (control.length >= 3)
        {
            new Splide( elms[ 0 ] ,
            { 
                type: 'loop',  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
                start: parseInt(cont[0].innerHTML),
            }
            ).mount();
        }
        else
        {
            new Splide( elms[ 0 ] ,
            {  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
                start: parseInt(cont[0].innerHTML)
            }
            ).mount();
        }

        cont = document.getElementsByClassName('contador_piernas');
        control = document.querySelectorAll("div.card_atuendos_new_piernas");

        if (control.length >= 3)
        {
            new Splide( elms[ 1 ] ,
            { 
                type: 'loop',  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
                start: parseInt(cont[0].innerHTML),
            }
            ).mount();
        }
        else
        {
            new Splide( elms[ 1 ] ,
            {  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
                start: parseInt(cont[0].innerHTML)
            }
            ).mount();
        }

        cont = document.getElementsByClassName('contador_pies');
        control = document.querySelectorAll("div.card_atuendos_new_pies");

        if (control.length >= 3)
        {
            new Splide( elms[ 2 ] ,
            { 
                type: 'loop',  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
                start: parseInt(cont[0].innerHTML),
            }
            ).mount();
        }
        else
        {
            new Splide( elms[ 2 ] ,
            {  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
                start: parseInt(cont[0].innerHTML)
            }
            ).mount();
        }

        cont = document.getElementsByClassName('contador_accesorios');
        control = document.querySelectorAll("div.card_atuendos_new_accesorio");

        if (control.length >= 3)
        {
            new Splide( elms[ 3 ] ,
            { 
                type: 'loop',  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
                start: parseInt(cont[0].innerHTML),
            }
            ).mount();
        }
        else
        {
            new Splide( elms[ 3 ] ,
            {  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
                start: parseInt(cont[0].innerHTML)
            }
            ).mount();
        }
    }
    else
    {
        let control = document.querySelectorAll("div.card");
        if(control.length >= 3)
        {
            new Splide( elms[0],
            {  
                type: 'loop',  
                width: 'auto',
                focus: 'center',
                perPage: 3,
                gap: 5,
            }
            ).mount();
        }
        else
        {
            new Splide( elms[ 0 ] ,
            {  
                width: 'auto',
                perPage: 3,
                gap: 5,
            }
            ).mount();
        }
        
    }
} );