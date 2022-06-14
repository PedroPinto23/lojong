import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/player_container.dart';
import 'package:testeflutter/styles/styles.dart';
import 'package:testeflutter/widgets/circular_image.dart';

class PlayerThumb extends StatelessWidget {
  final DepoimentosData? data;
  const PlayerThumb({Key? key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userImage = data!.videoImage;
    final userName = data!.userName!.split(" ");
    return PlayerContainer(
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(right: 125),
            child: CircularImage(
              url: userImage,
              size: 125,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset("assets/playIcon.svg"),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 30),
            child: SvgPicture.asset("assets/lojong_logo.svg"),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 30),
            child: Text("Depoimento\n de ${userName.first}",
                textAlign: TextAlign.right, style: Styles.thumbText),
          ),
        ),
      ]),
    );
  }
}
