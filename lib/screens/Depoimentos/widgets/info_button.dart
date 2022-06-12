import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: SvgPicture.asset("assets/infoIcon.svg"),
      ),
      onTap: () => Navigator.pushNamed(context, "info"),
    );
  }
}
