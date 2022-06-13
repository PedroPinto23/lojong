import 'package:flutter/material.dart';
import 'package:testeflutter/data/Endpoints/informacoes_api.dart';
import 'package:testeflutter/styles/styles.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:testeflutter/widgets/custon_loader.dart';

class CustomBodyInfo extends StatelessWidget {
  const CustomBodyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: FutureBuilder<String>(
      future: InformacoesApi.getInformacoes(),
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
