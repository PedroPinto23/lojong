import 'package:flutter/material.dart';
import 'package:testeflutter/data/Endpoints/informacoes_api.dart';
import 'package:testeflutter/data/StoredData/stored_data.dart';
import 'package:testeflutter/styles/styles.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:testeflutter/widgets/custon_loader.dart';

class CustomBodyInfo extends StatefulWidget {
  const CustomBodyInfo({Key? key}) : super(key: key);

  @override
  State<CustomBodyInfo> createState() => _CustomBodyInfoState();
}

class _CustomBodyInfoState extends State<CustomBodyInfo> {
  String informacoes = "";
  bool isDataChecked = false;

  @override
  void initState() {
    super.initState();
    StoredData.getInformacoes.then((data) {
      setState(() {
        informacoes = data;
        isDataChecked = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isDataChecked) {
      return const SliverToBoxAdapter(child: CustomLoader());
    } else {
      return SliverToBoxAdapter(
          child: FutureBuilder<String>(
        future: informacoes.isEmpty
            ? InformacoesApi.getInformacoes()
            : StoredData.getInformacoes,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CustomLoader();
          } else {
            String info = snapshot.data!;
            return Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Styles.roundedBoxDecoration,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  child: SelectableHtml(
                    data: info,
                    style: {
                      "strong": Styles.infoTitle,
                      "p": Styles.infoSubTitle,
                    },
                  ),
                ),
              ),
            );
          }
        },
      ));
    }
  }
}
