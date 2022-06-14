import 'package:flutter/material.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/comments.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/description.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/video_player.dart';
import 'package:testeflutter/styles/styles.dart';

class DepoimentosTile extends StatelessWidget {
  final DepoimentosData? data;
  final bool isRounded;
  const DepoimentosTile({
    Key? key,
    this.data,
    this.isRounded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final radius = isRounded ? Styles.roundedBoxDecoration : null;
    final name = data!.userName!.split(' ');
    final firstName = name.first;
    return Container(
      decoration: BoxDecoration(
        borderRadius: radius,
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomVideoPlayer(data: data),
            Description(name: firstName),
            const Divider(thickness: 1),
            Comment(data: data),
            const Divider(thickness: 1),
          ],
        ),
      ),
    );
  }
}
