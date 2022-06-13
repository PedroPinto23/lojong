import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:testeflutter/data/api_settings.dart';

class InformacoesApi {
  static Future<String> getInformacoes() async {
    final dio = Dio();
    final res = await dio.get(endpoint, options: Options(headers: headers));
    if (res.statusCode == 200) {
      String data = json.encode(res.data);
      return json.decode(data);
    } else {
      return '';
    }
  }

  static String get endpoint => apiUrl("language-lines?key=testimonials-info");
}
