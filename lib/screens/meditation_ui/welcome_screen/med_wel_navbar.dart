import 'package:flutter/material.dart';
import 'package:complex_ui/screens/meditation_ui/home_screen/med_home_screen.dart';

class MedWelNavBar extends StatelessWidget {
  const MedWelNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Nav Clipper
        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: WelNavClipper(),
            child: Container(
              height: 50,
              width: size.width,
              color: const Color(0xff1e1e1e),
            ),
          ),
        ),
        // Icon & Text
        Positioned(
          top: -10,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _navIcon(false, context),
                  const SizedBox(width: 1),
                  _navIcon(true, context),
                  const SizedBox(width: 1),
                  _navIcon(false, context),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Focus',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(width: 1),
                  Text(
                    'Relax',
                    style: TextStyle(color: Colors.grey.shade100),
                  ),
                  const SizedBox(width: 1),
                  const Text(
                    'Sleep',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _navIcon(bool isTrue, BuildContext context) => InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => const MedHomeScreen())),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xff1e1e1e),
          child: CircleAvatar(
            radius: 25,
            backgroundColor:
                isTrue ? Colors.grey.shade100 : const Color(0xff1e1e1e),
            child: Icon(Icons.bubble_chart,
                color: isTrue ? Colors.black87 : Colors.grey.shade100),
          ),
        ),
      );
}

class WelNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final h = size.height;
    final w = size.width;

    final double px1 = w / 12, py1 = 0;
    final double px2 = w / 12, py2 = h * 2 / 5;
    final double px3 = w * 2 / 12, py3 = h * 2 / 5;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    final double qx1 = w * 3 / 12, qy1 = h * 2 / 5;
    final double qx2 = w * 3 / 12, qy2 = 0;
    final double qx3 = w * 4 / 12, qy3 = 0;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    final double mx1 = w * 5 / 12, my1 = 0;
    final double mx2 = w * 5 / 12, my2 = h * 2 / 5;
    final double mx3 = w * 6 / 12, my3 = h * 2 / 5;
    path.cubicTo(mx1, my1, mx2, my2, mx3, my3);

    final double nx1 = w * 7 / 12, ny1 = h * 2 / 5;
    final double nx2 = w * 7 / 12, ny2 = 0;
    final double nx3 = w * 8 / 12, ny3 = 0;
    path.cubicTo(nx1, ny1, nx2, ny2, nx3, ny3);

    final double sx1 = w * 9 / 12, sy1 = 0;
    final double sx2 = w * 9 / 12, sy2 = h * 2 / 5;
    final double sx3 = w * 10 / 12, sy3 = h * 2 / 5;
    path.cubicTo(sx1, sy1, sx2, sy2, sx3, sy3);

    final double tx1 = w * 11 / 12, ty1 = h * 2 / 5;
    final double tx2 = w * 11 / 12, ty2 = 0;
    final double tx3 = w * 12 / 12, ty3 = 0;
    path.cubicTo(tx1, ty1, tx2, ty2, tx3, ty3);

    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
