import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/data/api_settings.dart';

class DepoimentosApi {
  static Future<List<DepoimentosData>> getDepoimentos() async {
    final client = http.Client();
    final res = await client.get(endpoint, headers: headers);

    if (res.statusCode == 200) {
      debugPrint("Api ok");
      final data = json.decode(res.body);
      return List.from(data.map((e) => DepoimentosData.fromJson(e)).toList());
    } else {
      return List<DepoimentosData>.empty();
    }
  }

  static Uri get endpoint => apiUrl("testimonials", dev: true);
}
