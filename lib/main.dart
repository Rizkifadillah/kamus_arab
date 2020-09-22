import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:kamus_arab/screens/home_huruf.dart';
import 'package:kamus_arab/screens/widget/card_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kumpulan kata bahasa Arab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/book.png'),
        nextScreen: Home(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.tealAccent[100],
        duration: 3000,
      ),
    );
  }
}