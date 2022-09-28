import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravNavBar extends StatelessWidget {
  const TravNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _NavPaniter(),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon:
                  const Icon(CupertinoIcons.chat_bubble, color: Colors.black87),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.square_split_2x2_fill,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavPaniter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width, h = size.height;
    final h5 = h * .5, w5 = w * .5;
    final h6 = h * .6;
    final path = Path()
      ..lineTo(w5 - 80, 0)
      ..cubicTo(w5 - 40, 0, w5 - 50, h5, w5 - 3, h6)
      ..lineTo(w5, h)
      ..lineTo(w, h)
      ..lineTo(w, 0)
      ..lineTo(w5 + 80, 0)
      ..cubicTo(w5 + 40, 0, w5 + 50, h5, w5 + 3, h6)
      ..lineTo(w5 - 3, h6)
      ..lineTo(w5, h)
      ..lineTo(0, h);
    canvas.drawShadow(path, Colors.black26, 10, false);
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
