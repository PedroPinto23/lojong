import 'package:flutter/material.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/image_avatar.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/status.dart';
import 'package:testeflutter/styles/styles.dart';

class ShowMore extends StatelessWidget {
  final DepoimentosData? data;
  const ShowMore({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 300,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageAvatar(data: data),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(data!.userInfo!, style: Styles.tileTitle),
                ),
                Status(status: data!.status!, center: true),
                closeButton(context),
              ],
            ),
          ),
        ));
  }

  Widget closeButton(BuildContext context) => MaterialButton(
        onPressed: () => Navigator.pop(context),
        minWidth: 104,
        elevation: 0,
        color: Styles.primaryColor,
        shape: const StadiumBorder(),
        child: Text("Fechar", style: Styles.closeButton),
      );
}
