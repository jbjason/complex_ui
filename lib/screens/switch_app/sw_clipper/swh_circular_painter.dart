import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'dart:math';

class SwhCircularPainter extends CustomPainter {
  final List<Color> colors;
  final double strokeWidth, circleRadius;
  final bool isProgress;
  const SwhCircularPainter({
    required this.colors,
    required this.strokeWidth,
    required this.circleRadius,
    required this.isProgress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final gradient1 = SweepGradient(colors: colors);
    final center = Offset(w / 2, h / 2);

    // colorful & ash Circle
    final rect1 = Rect.fromCenter(center: center, width: w, height: h);
    final paint1 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth
      ..shader = gradient1.createShader(rect1);
    canvas.drawArc(rect1, math.radians(180), math.radians(360), false, paint1);

    // white CirclePointer
    final paint2 = Paint()..color = Colors.white;
    final double circleVal = isProgress ? 325 : 107;
    final x1 = center.dx + w / 2 * cos(math.radians(circleVal));
    final y1 = center.dy + w / 2 * sin(math.radians(circleVal));
    final center2 = Offset(x1, y1);
    canvas.drawCircle(center2, circleRadius, paint2);

    // pointers Upper indicator circle
    final rect2 = Rect.fromCenter(center: center2, width: 37, height: 37);
    final paint3 = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..shader = gradient1.createShader(rect2);
    if (isProgress) {
      canvas.drawArc(
          rect2, math.radians(270), math.radians(120), false, paint3);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
