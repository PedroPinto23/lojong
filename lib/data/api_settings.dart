import 'dart:io';

/* obs: Como a API https://devlojong.com/api/language-lines?key=testimonials-info 
  não está retornando dados (status code 500), foi utilizada a API 
  https://applojong.com/api/language-lines?key=testimonials-info,

  já em https://devlojong.com/api/testimonials, está retornando normalmente */

Uri apiUrl(String endpoint, {bool dev = false}) =>
    Uri.parse("https://${dev ? 'dev' : 'app'}lojong.com/api/$endpoint");

Map<String, String> get headers => {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader:
          "Bearer 1TiJMof3AsqTRSSVqBUhzh6MZnNGPzVXvSQ9UpF2Mv7Cd3654PJMPm1DhpxZ"
    };
