import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math.dart' as math;

class CarDYellowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..color = buttonColor;
    final path = Path();
    final w = size.width, h = size.height;

    path.addArc(
      Rect.fromCenter(center: Offset(w / 2, w / 2), width: w, height: h),
      math.radians(-20),
      math.radians(220),
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
