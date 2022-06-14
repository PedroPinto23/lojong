import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Status extends StatelessWidget {
  final int? status;
  final bool center;
  const Status({
    Key? key,
    this.status,
    this.center = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget starIcon() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: SvgPicture.asset("assets/starIcon.svg"),
        );
    final stars = List.filled(status!, starIcon());
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
          mainAxisAlignment:
              center ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: stars),
    );
  }
}
