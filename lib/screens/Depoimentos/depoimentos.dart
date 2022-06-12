import 'package:flutter/material.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/list_view.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/appbar.dart';

class Depoimentos extends StatefulWidget {
  const Depoimentos({Key? key}) : super(key: key);

  @override
  State<Depoimentos> createState() => _DepoimentosState();
}

class _DepoimentosState extends State<Depoimentos> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        CustomAppbar(),
        CustomListView(),
      ],
    ));
  }
}
