import 'package:flutter/material.dart';
import 'package:testeflutter/data/Endpoints/depoimentos_api.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/data/StoredData/stored_data.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/depoimentos_tile.dart';
import 'package:testeflutter/widgets/custon_loader.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List<DepoimentosData> depoimentos = [];
  bool isDataChecked = false;

  @override
  void initState() {
    super.initState();
    StoredData.getDepoimentos.then((data) {
      setState(() {
        depoimentos = data;
        isDataChecked = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isDataChecked) {
      return const SliverToBoxAdapter(child: CustomLoader());
    } else {
      return FutureBuilder<List<DepoimentosData>>(
          future: depoimentos.isEmpty
              ? DepoimentosApi.getDepoimentos()
              : StoredData.getDepoimentos,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SliverToBoxAdapter(
                child: CustomLoader(),
              );
            } else {
              final data = snapshot.data!;
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final isRounded = index == 0;
                    return DepoimentosTile(
                      data: data[index],
                      isRounded: isRounded,
                    );
                  },
                  childCount: data.length,
                ),
              );
            }
          });
    }
  }
}
