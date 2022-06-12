import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testeflutter/data/api_settings.dart';

class InformacoesApi {
  static Future<dynamic> getInformacoes() async {
    final client = http.Client();
    final res = await client.get(endpoint, headers: headers);
    if (res.statusCode == 200) {
      debugPrint(res.body);
    } else {
      debugPrint("erro infoemacoes");
    }
  }

  static Uri get endpoint => apiUrl("language-lines?key=testimonials-info");
}
