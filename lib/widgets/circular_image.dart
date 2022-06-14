import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String? url;
  final double size;
  const CircularImage({Key? key, this.url, this.size = 63}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: const EdgeInsets.only(right: 12, bottom: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(url!),
        ),
      ),
    );
  }
}
