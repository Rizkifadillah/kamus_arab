
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kamus_arab/resources/model_kamus.dart';
import 'package:kamus_arab/resources/service.dart';
import 'package:kamus_arab/screens/widget/card_huruf.dart';
import 'package:pk_skeleton/pk_skeleton.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: FutureBuilder<List<Datum>>(
          future: ServiceData().loadDatum(),
          builder: (c, snapshot) {
            return snapshot.hasData
                ? Directionality(
                textDirection: TextDirection.rtl,
                child: GridView(
                    padding: EdgeInsets.all(10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: snapshot.data
                        .map((k) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new CardKamus(
                          huruf: k.huruf,                ),
                        ))
                        .toList(),
                  ),
                )
                : PKCardPageSkeleton(
              totalLines: 5,
            );
          },
        ),
      ),
    );
  }
}
