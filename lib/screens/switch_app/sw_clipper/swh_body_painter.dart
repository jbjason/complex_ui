import 'package:flutter/material.dart';

class SwhBodyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double h = size.height, w = size.width;

    // back Grey Shadow
    final path2 = Path();
    final paint2 = Paint()..color = Colors.grey;
    path2.moveTo(w * .4, h * .43);
    path2.lineTo(w * .4, h * .433);
    final nx1 = w * .43, ny1 = h * .583;
    final nx2 = w, ny2 = h * .383;
    final nx3 = w, ny3 = h * .783;
    path2.cubicTo(nx1, ny1, nx2, ny2, nx3, ny3);
    path2.lineTo(w, h * .43);
    path2.close();
    canvas.drawPath(path2, paint2);

    // Front body Color
    const gradient1 = LinearGradient(colors: [
      Color(0xFF646C79),
      Color(0xFF646C79),
      Color(0xFF393F4B),
    ]);
    final rect1 = Rect.fromLTRB(0, 0, w, h);
    final paint1 = Paint()..shader = gradient1.createShader(rect1);
    final path1 = Path();

    path1.moveTo(w * .4, 0);
    path1.lineTo(w * .4, h * .43);
    final mx1 = w * .43, my1 = h * .58;
    final mx2 = w, my2 = h * .38;
    final mx3 = w, my3 = h * .78;
    path1.cubicTo(mx1, my1, mx2, my2, mx3, my3);
    path1.lineTo(w, 0);
    path1.close();
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
