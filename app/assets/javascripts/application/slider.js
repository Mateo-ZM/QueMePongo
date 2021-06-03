document.addEventListener( 'DOMContentLoaded', function () 
{
    var elms = document.getElementsByClassName( 'splide' );

    if(elms.length > 1)
    {
        var cont = document.getElementsByClassName('contador_torso');
        let control = document.querySelectorAll("div.card_atuendos_new_torso");


        new Splide( elms[ 0 ] ,
        { 
            width: 'auto',
            focus: 'center',
            perPage: 3,
            gap: 5,
            start: parseInt(cont[0].innerHTML),
            trimSpace: false,
            breakpoints: {
                '1100': {
                    perPage: 2,
                    focus: 0,
                    gap: 5,
                    pagination: false,
                },
                '770': {
                    type: 'loop',
                    perPage: 1,
                    gap: 5,
                    pagination: false,
                },
            }
        }
        ).mount();
        cont = document.getElementsByClassName('contador_piernas');
        control = document.querySelectorAll("div.card_atuendos_new_piernas");

        new Splide( elms[ 1 ] ,
        { 
            width: 'auto',
            focus: 'center',
            perPage: 3,
            gap: 5,
            start: parseInt(cont[0].innerHTML),
            trimSpace: false,
            breakpoints: {
                '1100': {
                    perPage: 2,
                    focus: 0,
                    gap: 5,
                    pagination: false,
                },
                '770': {
                    type: 'loop',
                    perPage: 1,
                    gap: 5,
                    pagination: false,
                },
            }
        }
        ).mount();

        cont = document.getElementsByClassName('contador_pies');
        control = document.querySelectorAll("div.card_atuendos_new_pies");


        new Splide( elms[ 2 ] ,
        { 
            width: 'auto',
            focus: 'center',
            perPage: 3,
            gap: 5,
            start: parseInt(cont[0].innerHTML),
            trimSpace: false,
            breakpoints: {
                '1100': {
                    perPage: 2,
                    focus: 0,
                    gap: 5,
                    pagination: false,
                },
                '770': {
                    type: 'loop',
                    perPage: 1,
                    gap: 5,
                    pagination: false,
                },
            }
        }
        ).mount();
    

        cont = document.getElementsByClassName('contador_accesorios');
        control = document.querySelectorAll("div.card_atuendos_new_accesorio");

        new Splide( elms[ 3 ] ,
        {   
            width: 'auto',
            focus: 'center',
            perPage: 3,
            gap: 5,
            start: parseInt(cont[0].innerHTML),
            trimSpace: false,
            breakpoints: {
                '1100': {
                    perPage: 2,
                    focus: 0,
                    gap: 5,
                    pagination: false,
                },
                '770': {
                    type: 'loop',
                    perPage: 1,
                    gap: 5,
                    pagination: false,
                },
            }
        }
        ).mount();

    }
    else
    {
        let control = document.querySelectorAll("div.card");
        if(control.length >= 3)
        {
            new Splide( elms[0],
            {  
                type: 'loop',
                perPage: 3,
                gap: 5,

                breakpoints: {
                    '1100': {
                        perPage: 2,
                        gap: 5,
                        focus: 0,
                        pagination: false,
                    },
                    '770': {
                        perPage: 1,
                        gap: 5,
                        pagination: false,
                    },
                }
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