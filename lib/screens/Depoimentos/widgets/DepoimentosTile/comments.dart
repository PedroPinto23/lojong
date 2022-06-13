import 'package:flutter/material.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/styles/styles.dart';

class Comment extends StatelessWidget {
  final DepoimentosData? data;
  const Comment({
    Key? key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: ListTile(
        leading: leading,
        minLeadingWidth: 10,
        title: Text('"${data!.userInfo!}"'),
        subtitle: Text("${data!.status} stars"),
      ),
    );
  }

  Widget get leading {
    final splitName = data!.userName!.split(" ");
    final userName = "${splitName.first} ${splitName[1][0]}.";
    return CircleAvatar(
      backgroundImage: NetworkImage(data!.userImage!),
      radius: 30,
    );
  }
}
