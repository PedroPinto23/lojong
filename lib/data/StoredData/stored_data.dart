import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';

class StoredData {
  final hive = Hive.box("store");
  static Future<void> saveDepoimentos(List<DepoimentosData> value) async {
    final hive = await Hive.openBox("store");
    final depoimentos = value.map((e) => e.toJson()).toList();
    final currentTime = DateTime.now().toIso8601String();
    hive.put("depoimentos", depoimentos);
    String timeSaved = hive.get("depTimeFetch") ?? "";
    if (timeSaved.isEmpty) {
      hive.put("depTimeFetch", currentTime);
    }
  }

  static Future<List<DepoimentosData>> get getDepoimentos async {
    final hive = await Hive.openBox("store");
    List data = hive.get("depoimentos") ?? [];
    String timeSaved = hive.get("depTimeFetch") ?? "";
    if (data.isNotEmpty && timeSaved.isNotEmpty) {
      final currentTime = DateTime.now();
      final timeFetch = DateTime.parse(timeSaved).difference(currentTime);
      final isValid = timeFetch.inDays >= 0;
      debugPrint("DATE TIME valid: $isValid");
      if (isValid) {
        List<dynamic> encoded = data.map((e) => json.encode(e)).toList();
        return List<DepoimentosData>.from(encoded
            .map((e) => DepoimentosData.fromJson(json.decode(e)))
            .toList());
      } else {
        hive.delete("depTimeFetch");
        return List<DepoimentosData>.empty();
      }
    } else {
      return List<DepoimentosData>.empty();
    }
  }

  static Future<void> saveInformacoes(String value) async {
    final hive = await Hive.openBox("store");
    hive.put("informacoes", value);
  }

  static Future<String> get getInformacoes async {
    final hive = await Hive.openBox("store");
    String info = hive.get("informacoes") ?? "";
    return info;
  }
}
