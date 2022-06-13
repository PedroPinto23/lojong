import 'package:flutter/material.dart';
import 'package:testeflutter/screens/Depoimentos/depoimentos.dart';
import 'package:testeflutter/screens/Informacoes/informacoes.dart';

Route<dynamic> routes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return pageRoute(const Depoimentos());
    case 'info':
      return _createRoute(const Informacoes());
    default:
      return pageRoute(const Depoimentos());
  }
}

MaterialPageRoute<dynamic> pageRoute(Widget widget) =>
    MaterialPageRoute(builder: (context) => widget);

Route _createRoute(Widget screen) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeIn;

      final tween = Tween(begin: begin, end: end).chain(
        CurveTween(curve: curve),
      );

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
