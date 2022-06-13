import 'package:flutter/material.dart';
import 'package:testeflutter/screens/Informacoes/widgets/appbar_info.dart';
import 'package:testeflutter/screens/Informacoes/widgets/body_info.dart';

class Informacoes extends StatelessWidget {
  const Informacoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        CustomAppbarInfo(),
        CustomBodyInfo(),
      ],
    ));
  }
}
