import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class SwhClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final center = Offset(w / 2, h / 2);
    const gradient1 = SweepGradient(colors: [
      Color(0xFF757575),
      Color(0xFF757575),
      Colors.transparent,
      Color(0xFF757575),
      Color(0xFF757575),
      Color(0xFF757575),
    ]);
    final rect1 = Rect.fromCenter(center: center, width: w, height: h);
    final paint1 = Paint()..color = const Color(0xFF27283A);
    final paint2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1
      ..shader = gradient1.createShader(rect1);

    // back Canvas Circle
    canvas.drawArc(rect1, math.radians(0), math.radians(360), false, paint1);

    // clock Pulse
    final center2 = Offset(w / 2, h / 2);
    final outerRadius = center2.dx;
    final innerRadius = center2.dx - 21;
    // all center.dx because hight & width are same
    for (double i = 0; i < 360; i += 30) {
      // pulse Upper Part
      final x1 = center2.dx + (outerRadius - 10) * cos(math.radians(i));
      final y1 = center2.dx + (outerRadius - 10) * sin(math.radians(i));
      // pulse Inner Part
      final x2 = center2.dx + innerRadius * cos(math.radians(i));
      final y2 = center2.dx + innerRadius * sin(math.radians(i));
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint2);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
