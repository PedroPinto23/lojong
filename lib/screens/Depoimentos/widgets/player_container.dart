import 'package:flutter/material.dart';
import 'package:testeflutter/styles/styles.dart';

class PlayerContainer extends StatelessWidget {
  final Widget? child;
  const PlayerContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Styles.secundaryColor,
      ),
      child: child!,
    );
  }
}
