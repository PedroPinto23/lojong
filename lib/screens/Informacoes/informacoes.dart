import 'package:flutter/material.dart';
import 'package:testeflutter/data/Endpoints/informacoes_api.dart';
import 'package:testeflutter/screens/Informacoes/widgets/appbar_info.dart';

class Informacoes extends StatefulWidget {
  const Informacoes({Key? key}) : super(key: key);

  @override
  State<Informacoes> createState() => _InformacoesState();
}

class _InformacoesState extends State<Informacoes> {
  @override
  void initState() {
    super.initState();
    InformacoesApi.getInformacoes();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        CustomAppbarInfo(),
      ],
    ));
  }
}
