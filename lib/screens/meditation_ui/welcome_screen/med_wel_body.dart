import 'package:flutter/material.dart';

class MedWelBody extends StatelessWidget {
  const MedWelBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _imageBody('Meditation', 'discover happiness',
                  'assets/meditation/dessert.jpg'),
            ),
            Expanded(
              child: _imageBody('Daydream', 'go beyond the form',
                  'assets/meditation/galaxy.jpg'),
            ),
          ],
        ),
        // Middle Image
        Positioned(
          top: size.height * .23,
          height: size.height * .6,
          width: size.width,
          child: ClipPath(
            clipper: BodyClipper(),
            child: _imageBody(
                'Sensations', 'feel the moment', 'assets/meditation/beach.jpg'),
          ),
        ),
      ],
    );
  }

  Widget _imageBody(String text, String subtitle, String image) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
}

class BodyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final h = size.height;
    final w = size.width;

    final double px1 = 0, py1 = h * .1;
    final double px2 = w / 10, py2 = h * .2;
    final double px3 = w * 6 / 10, py3 = h * .25;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    final double qx1 = w * 8 / 10, qy1 = h * .3;
    final double qx2 = w * 10 / 10, qy2 = h * .3;
    final double qx3 = w * 10 / 10, qy3 = h * .4;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    path.lineTo(w, h);

    final double mx1 = w, my1 = h * .9;
    final double mx2 = w, my2 = h * .8;
    final double mx3 = w * 2 / 10, my3 = h * .7;
    path.cubicTo(mx1, my1, mx2, my2, mx3, my3);

    final double nx1 = w * 2 / 10, ny1 = h * .7;
    final double nx2 = 0, ny2 = h * .7;
    final double nx3 = 0, ny3 = h * .5;
    path.cubicTo(nx1, ny1, nx2, ny2, nx3, ny3);

    // path.lineTo(0, h * .4);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
