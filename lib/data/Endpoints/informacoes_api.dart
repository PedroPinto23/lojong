import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testeflutter/data/StoredData/stored_data.dart';
import 'package:testeflutter/data/api_settings.dart';

class InformacoesApi {
  static Future<String> getInformacoes() async {
    final dio = Dio();
    final res = await dio.get(endpoint, options: Options(headers: headers));
    if (res.statusCode == 200) {
      Fluttertoast.showToast(msg: "Api ok");
      String data = json.encode(res.data);
      final informacoes = json.decode(data);
      StoredData.saveInformacoes(informacoes);
      return informacoes;
    } else {
      return '';
    }
  }

  static String get endpoint => apiUrl("language-lines?key=testimonials-info");
}
