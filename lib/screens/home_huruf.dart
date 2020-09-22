import 'package:flutter/material.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_10.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_11.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_12.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_13.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_14.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_17.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_18.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_19.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_2.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_20.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_21.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_22.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_23.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_24.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_25.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_26.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_27.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_3.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_4.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_5.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_6.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_8.dart';
import 'package:kamus_arab/screens/listpage/list_huruf_9.dart';
import 'package:kamus_arab/screens/widget/custom_app_bar.dart';

import 'listpage/list_huruf_1.dart';
import 'listpage/list_huruf_15.dart';
import 'listpage/list_huruf_16.dart';
import 'listpage/list_huruf_7.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white70,Colors.white]
          ),
          boxShadow: [BoxShadow(
              color: Colors.grey[500],
              blurRadius: 10,
              spreadRadius: 1
          )]
      ),
        child:Stack(
        children: [
          CostumAppBar(),
          ListView(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 0),
                child: Column(
                  children: [
                    Text(
                      'Arabic',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 46,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Your learning arabic language',
                      textAlign:TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 40
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Empat()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ث",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tiga()));

                    },
                    shape:CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ت",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>Dua()));
                    },
                    shape:CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ب",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(

                    elevation: 3,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>Satu()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ا",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                  height: 10
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Delapan()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("د",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tujuh()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "خ",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    elevation: 3,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Enam()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ح",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Lima()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ج",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 10
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    elevation: 3,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SatuDua()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("س",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sebelas()));
                    },
                    shape:CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ز",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sepuluh()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,

                    child: Text("ر",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sembilan()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ذ",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 10
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SatuEnam()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ظ",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SatuLima()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ط",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SatuEmpat()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ص",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SatuTiga()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                    "ش",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 10
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DuaPuluh()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ق",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SatuSembilan()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ف",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SatuDelapan()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("غ",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SatuTujuh()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ع",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 10
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DuaEmpat()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ن",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DuaTiga()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "م",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DuaDua()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ل",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DuaSatu()));
                    },
                    shape:CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ك",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 10
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DuaTujuh()));
                    },
                    shape:CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ي",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DuaEnam()));
                    },
                    shape:CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Text("ه",style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    elevation: 1,
                    highlightElevation: 1,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DuaLima()));
                    },
                    shape: CircleBorder(),
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "و",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 10
              ),
            ],
          ),

        ],
      ),
    )
    );
  }
}
