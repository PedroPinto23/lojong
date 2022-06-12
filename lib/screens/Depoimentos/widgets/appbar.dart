import 'package:flutter/material.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/info_button.dart';
import 'package:testeflutter/styles/styles.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/back_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        toolbarHeight: 89,
        title: Text('DEPOIMENTOS', style: Styles.appbar),
        centerTitle: true,
        leadingWidth: 50,
        leading: const CustomBackButton(),
        actions: const [InfoButton()]);
  }
}
