import 'package:flutter/material.dart';
import 'package:testeflutter/data/Endpoints/depoimentos_api.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/depoimentos_tile.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DepoimentosData>>(
        future: DepoimentosApi.getDepoimentos(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          } else {
            final data = snapshot.data!;
            debugPrint("${data.map((e) => e.status)}");
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
