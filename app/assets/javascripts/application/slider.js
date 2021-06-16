function slider() 
{
    var elms = document.getElementsByClassName( 'splide' );

    if(elms.length > 1)
    {
        var cont = document.getElementsByClassName('contador');

        for(var i = 0; i<elms.length;i++)
        {
            new Splide( elms[ i ] ,
                { 
                    width: 'auto',
                    focus: 'center',
                    perPage: 3,
                    gap: 5,
                    start: parseInt(cont[i].innerHTML),
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
}