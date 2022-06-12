import 'package:flutter/material.dart';
import 'package:testeflutter/screens/Informacoes/widgets/close_button.dart';
import 'package:testeflutter/styles/styles.dart';

class CustomAppbarInfo extends StatelessWidget {
  const CustomAppbarInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 89,
      title: Text('INFORMAÇÕES', style: Styles.appbar),
      centerTitle: true,
      automaticallyImplyLeading: false,
      actions: const [CustomCloseButton()],
    );
  }
}
