import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/furniture_ui/furniture.dart';

class FurHNavBar extends StatelessWidget {
  const FurHNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: CustomPaint(
        painter: _NavPaniter(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(width: 1),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.square_split_2x2_fill,
                  color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon:
                  const Icon(CupertinoIcons.chat_bubble_fill, color: textColor),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.location_solid, color: textColor),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.person_fill, color: textColor),
            ),
            SizedBox(
              width: 70,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(top: -23, right: 21, child: _floatButton()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _floatButton() => FloatingActionButton(
        onPressed: () {},
        backgroundColor: brownDark,
        child: Image.asset(
          'assets/furniture/fur_icon/cart.png',
          width: 25,
          color: Colors.white,
          fit: BoxFit.contain,
        ),
      );
}

class _NavPaniter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width, h = size.height;
    final path = Path();
    path.moveTo(0, h * .8);

    const px1 = 0.0, py1 = 0.0;
    final px2 = w * .25, py2 = h * .2;
    final px3 = w * .5, py3 = h * .3;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    path.quadraticBezierTo(w * .7, h * .35, w * .75, 0);
    path.quadraticBezierTo(w * .85, h * 1.4, w * .95, 0);
    path.quadraticBezierTo(w, h * .35, w, h * .5);

    path.lineTo(w, h * .2);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();

    canvas.drawShadow(path, brownDark, 10, false);
    final paint = Paint()
      ..color = brownDark
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
