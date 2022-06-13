import 'package:flutter/material.dart';
import 'package:testeflutter/styles/styles.dart';

class Description extends StatelessWidget {
  final String? name;
  const Description({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Text(
        "Assista ao depoimento de $name.",
        style: Styles.infoDescription,
      ),
    );
  }
}
