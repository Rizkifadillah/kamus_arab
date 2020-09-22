import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;


class DrawClip extends CustomClipper<Path> {
  double move = 0;
  double slice = math.pi;
  DrawClip(this.move);
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8);
    double xCenter =
        size.width * 0.5 + (size.width * 0.6 + 1) * math.sin(move * slice);
    double yCenter = size.height * 0.8 + 69 * math.cos(move * slice);
    path.quadraticBezierTo(xCenter, yCenter, size.width, size.height * 0.8);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo( 3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.cubicTo( 5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo( 7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
    path.cubicTo( 9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo( 11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(0,sh);
    path.lineTo(4* sw / 12 , sh);
    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo( 3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
//    path.cubicTo( 5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
//    path.cubicTo( 7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
//    path.cubicTo( 9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
//    path.cubicTo( 11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(sw, 0);
//    path.cubicTo(0, sh*0.3, sw, sh*0.2, sw, sh*45);
//    path.lineTo(sw,sh);
//    path.cubicTo(sw, sh*0.7, 0, sh*0.8, 0, sh*0.55);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class AppBarWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.lineTo(0,sh);
    path.lineTo(4* sw / 12 , sh);
    path.cubicTo( 5 * sw / 12, sh, 5 * sw / 12, sh / 2 , 6 * sw / 12, sh / 2);
    path.cubicTo( 7 * sw / 12, sh / 2, 7 * sw / 12, sh, 8 * sw / 12, sh);
//

//    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
//    path.cubicTo( 3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
//    path.cubicTo( 5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
//    path.cubicTo( 7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
//    path.cubicTo( 9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
//    path.cubicTo( 11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(sw, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

