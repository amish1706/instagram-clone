import 'dart:math';

import 'package:flutter/material.dart';

class GreyRing extends StatelessWidget {
  const GreyRing(
      {Key? key, this.width = 4.0, this.padding = 0.0, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: RingPainter(width),
        child:
            Container(padding: EdgeInsets.all(padding + width), child: child));
  }

  final double width;
  final double padding;
  final Widget child;
}

class RingPainter extends CustomPainter {
  RingPainter(this.strokeWidth);

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = min(size.width, size.height) / 2 - strokeWidth / 2;
    const SweepGradient gradient = SweepGradient(colors: <Color>[
      Color.fromRGBO(199, 199, 204, 1),
      Color.fromRGBO(199, 199, 204, 1),
      Color.fromRGBO(199, 199, 204, 1)
    ]);

    final Paint brush = Paint()
      ..shader = gradient.createShader(Rect.fromCenter(
          center: center, width: size.width, height: size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawCircle(center, radius, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  final double strokeWidth;
}
