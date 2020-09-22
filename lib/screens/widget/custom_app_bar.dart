import 'package:flutter/material.dart';
import 'dart:math' as math;


class CostumAppBar extends StatefulWidget {
  @override
  _CostumAppBarState createState() => _CostumAppBarState();
}

class _CostumAppBarState extends State<CostumAppBar>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: 0.0,
      duration: Duration(seconds: 25),
      upperBound: 1,
      lowerBound: -1,
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 205,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget child) {
              return ClipPath(
                clipper: DrawClip(_controller.value),
                child: Container(
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Colors.blueAccent[100],Colors.tealAccent[100]]//                        colors: [Color(0xFFE0647B), Color(0xFFFCDD89)]
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

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