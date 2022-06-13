import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/data/api_settings.dart';

class DepoimentosApi {
  static Future<List<DepoimentosData>> getDepoimentos() async {
    final dio = Dio();
    final res = await dio.get(endpoint,
        options: Options(
          headers: headers,
        ));

    if (res.statusCode == 200) {
      debugPrint("Api ok");
      final data = res.data;
      return List.from(data.map((e) => DepoimentosData.fromJson(e)).toList());
    } else {
      return List<DepoimentosData>.empty();
    }
  }

  static String get endpoint => apiUrl("testimonials", dev: true);
}
