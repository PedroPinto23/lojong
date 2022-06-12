import 'package:flutter/material.dart';
import 'package:testeflutter/routes.dart';
import 'package:testeflutter/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: routes,
      initialRoute: '/',
    );
  }
}
