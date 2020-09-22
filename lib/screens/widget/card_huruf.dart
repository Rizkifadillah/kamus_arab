import 'package:flutter/material.dart';

class CardKamus extends StatelessWidget {
  const CardKamus({
    Key key,
    @required this.huruf,
  }) : super(key: key);
  final String huruf;

  @override
  Widget build(BuildContext context) {
    return
        MaterialButton(
          elevation: 1,
            highlightElevation: 1,
          onPressed: (){

          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          color: Colors.grey.shade700,
          textColor: Colors.white70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                huruf,style: TextStyle(
                  fontSize: 90,
              fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ],
          ),
        );
  }
}
