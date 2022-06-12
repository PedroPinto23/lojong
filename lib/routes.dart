import 'package:flutter/material.dart';
import 'package:testeflutter/screens/Depoimentos/depoimentos.dart';
import 'package:testeflutter/screens/Informacoes/informacoes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const Depoimentos(),
  'info': (context) => const Informacoes(),
};
