
export function getLang(locale, str) {
    switch(locale) {    
        case 'en':
            return 'EN#' + str;
            break;
        case 'de':
            return 'DE#' + str;
            break;
    }

}