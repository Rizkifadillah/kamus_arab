import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class Card1 extends StatelessWidget {
  Card1({Key key, @required this.huruf, this.kata, this.arti, this.kalimat})
      : super(key: key);
  final String huruf, kata, arti, kalimat;
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 7,
      child: Card(
        child: Container(
          child: SimpleFoldingCell(
              key: _foldingCellKey,
              frontWidget: _buildFrontWidget(),
              innerTopWidget: _buildInnerTopWidget(),
              innerBottomWidget: _buildInnerBottomWidget(),
              cellSize: Size(MediaQuery.of(context).size.width,90),
              onOpen: () => print('cell opened'),
              onClose: () => print('cell closed')
          ),
        ),
      ),
    );
  }

  Widget _buildFrontWidget() {
    return Material(
      elevation: 7,
      borderRadius: BorderRadius.circular(0),
//      color: Colors.white,
      child: Container(
      height: 100,
          alignment: Alignment.center,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 80,
                    child:  Text(huruf,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    ),
                      decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.blueAccent[100],Colors.tealAccent[100]]//                        colors: [Color(0xFFE0647B), Color(0xFFFCDD89)]
                    ),
                    borderRadius: BorderRadius.circular(0)
                  ))),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(kata,style: TextStyle(
                                  color:Colors.blueAccent,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                                    ),
                              Text(arti,style: TextStyle(
                                  color:Colors.blueAccent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(icon: Icon(Icons.keyboard_arrow_down),color: Colors.blueAccent,
                              onPressed:() => _foldingCellKey?.currentState?.toggleFold(),),
                        )
                      ],
                    ),

                  )
              ),
            ],
          )),
    );
  }

  Widget _buildInnerTopWidget() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
          color: Colors.blueAccent[100]
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(kata,style: TextStyle(
                    color:Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                ),
                Text(arti,style: TextStyle(
                    color:Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child:  Text(huruf,style: TextStyle(
                color:Colors.black54,
                fontSize: 40,
                fontWeight: FontWeight.bold),
            )
          )
        ],
      ),

    );
  }

  Widget _buildInnerBottomWidget() {
    return InkWell(
      onTap:
        () => _foldingCellKey?.currentState?.toggleFold(),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topRight: Radius.circular(0),
            ),
            color: Colors.lightBlueAccent[100]
        ),
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 18),
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text("contoh kalimat:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  ),
                  Text(kalimat,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:Colors.black54,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
