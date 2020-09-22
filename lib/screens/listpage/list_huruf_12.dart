import 'package:flutter/material.dart';
import 'package:kamus_arab/resources/model_kamus.dart';
import 'package:kamus_arab/resources/service.dart';
import 'package:kamus_arab/screens/widget/card_huruf1.dart';
import 'package:pk_skeleton/pk_skeleton.dart';

class SatuDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Datum>>(
      future: ServiceData().load12(),
      builder: (c, snapshot) {
        return snapshot.hasData
            ? Scaffold(
            appBar: AppBar(
              title: Container(
//          height: 50,
//            width: 50,
                  child: Row(
                    children: <Widget>[
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset("assets/book.png", fit: BoxFit.cover)),
                      SizedBox(
                        width: 25,
                      ),

                      Text(
                        "Kumpulan Kata",
                        style: TextStyle(color: Colors.green[700],fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),

              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blueAccent[100],Colors.tealAccent[100]]
                    ),
                    boxShadow: [BoxShadow(
                        color: Colors.grey[500],
                        blurRadius: 10,
                        spreadRadius: 1
                    )]
                ),
              ),
            ),
            body: ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: snapshot.data
                    .map((data) => Card1(
                    huruf:data.huruf,
                    kata: data.kata,
                    arti: data.arti,
                    kalimat: data.kalimat
                ))
                    .toList())
        )
            : PKCardListSkeleton(
          isCircularImage: true,
          isBottomLinesActive: true,
          length: 10,
        );
      },
    );
  }
}
