import 'package:flutter/material.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/styles/styles.dart';
import 'package:testeflutter/widgets/circular_image.dart';

class ImageAvatar extends StatelessWidget {
  final DepoimentosData? data;
  const ImageAvatar({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final splitName = data!.userName!.split(" ");
    final userName = "${splitName.first} ${splitName[1][0].toUpperCase()}.";
    return Column(
      children: [
        CircularImage(url: data!.userImage!),
        Text(
          userName,
          style: Styles.nameLabel,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
