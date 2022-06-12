import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: SvgPicture.asset("assets/closeIcon.svg"),
      ),
      onTap: () => Navigator.pop(context),
    );
  }
}
