import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/image_avatar.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/status.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/custom_list_tile.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/show_more.dart';
import 'package:testeflutter/styles/styles.dart';

class Comment extends StatelessWidget {
  final DepoimentosData? data;
  const Comment({
    Key? key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = data!.userInfo!.length;
    final readMore = length > 100;
    final content =
        readMore ? data!.userInfo!.substring(0, 100) + "... " : data!.userInfo!;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: CustomListTile(
        leading: ImageAvatar(data: data),
        title: RichText(
          text: TextSpan(
            text: "",
            children: [
              TextSpan(text: content, style: Styles.tileTitle),
              if (readMore)
                TextSpan(
                  text: "ver mais",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => showDialog(
                        context: context,
                        builder: (context) {
                          return ShowMore(data: data!);
                        }),
                  style: Styles.verMais,
                )
            ],
            style: DefaultTextStyle.of(context).style,
          ),
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
        subTitle: Status(status: data!.status),
      ),
    );
  }
}
