document.addEventListener( 'DOMContentLoaded', function () 
{
    var elms = document.getElementsByClassName( 'splide' );
    for ( var i = 0, len = elms.length; i < len; i++ ) 
    {
        if (elms.length >= 3)
        {
            new Splide( elms[ i ] ,
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
            new Splide( elms[ i ] ,
            {  
                width: 'auto',
                perPage: 3,
                gap: 5,
            }
            ).mount();
        }
    }
} );




