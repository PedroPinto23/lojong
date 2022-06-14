import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/data/StoredData/stored_data.dart';
import 'package:testeflutter/data/api_settings.dart';

class DepoimentosApi {
  static Future<List<DepoimentosData>> getDepoimentos() async {
    final dio = Dio();
    final res = await dio.get(endpoint,
        options: Options(
          headers: headers,
        ));

    if (res.statusCode == 200) {
      Fluttertoast.showToast(msg: "Api ok");
      final data = res.data;
      final depoimentos = List<DepoimentosData>.from(
          data.map((e) => DepoimentosData.fromJson(e)).toList());
      StoredData.saveDepoimentos(depoimentos);
      return depoimentos;
    } else {
      return List<DepoimentosData>.empty();
    }
  }

  static String get endpoint => apiUrl("testimonials", dev: true);
}
