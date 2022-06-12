import 'package:flutter/material.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';

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
    const radius = Radius.circular(15);
    return Container(
      decoration: BoxDecoration(
        borderRadius: isRounded
            ? const BorderRadius.only(
                topLeft: radius,
                topRight: radius,
              )
            : null,
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(data!.userInfo!),
      ),
    );
  }
}
