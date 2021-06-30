function idioma(lenguaje){
    const parser = new URL(window.location);
    parser.searchParams.set("locale", lenguaje);
    window.location = parser.href;
}
function idioma_seleccionado(){
    var urlParams = new URLSearchParams(window.location.search);
    var lenguaje_param = urlParams.get('locale');
    let select_idioma = document.querySelector('.selector_idioma');
    switch (lenguaje_param) {
        case "es":
            select_idioma.selectedIndex = 0;
            break;
        case "en":
            select_idioma.selectedIndex = 1;
            break;
        case "de":
            select_idioma.selectedIndex = 2;
            break;
        case "it":
            select_idioma.selectedIndex = 3;
            break;
        default:
            select_idioma.selectedIndex = 0;
            break;
    }
}

