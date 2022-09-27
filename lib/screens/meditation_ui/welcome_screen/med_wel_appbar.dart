import 'package:flutter/material.dart';

class MedWelAppBar extends StatelessWidget {
  const MedWelAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black87, Colors.transparent]),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: ClipPath(
              clipper: WelAppbarClipper(),
              child: Container(
                width: size.width,
                color: const Color(0xffaba197),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(Icons.wifi_tethering, size: 30, color: Colors.white),
                    SizedBox(width: 1),
                    Icon(Icons.notification_add, size: 30, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -35,
            left: size.width * .5 - 30,
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('assets/meditation/jb.jpg'),
                child: Align(
                    alignment: Alignment(0, 3),
                    child: Icon(Icons.add, size: 35)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelAppbarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final h = size.height;
    final w = size.width;
    path.lineTo(0, h);
    path.lineTo(w * 2 / 7, h);

    final double px1 = w * 3 / 8, py1 = h;
    final double px2 = w * 3 / 8, py2 = h * 3 / 5;
    final double px3 = w * 4 / 8, py3 = h * 3 / 5;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    final double qx1 = w * 5 / 8, qy1 = h * 3 / 5;
    final double qx2 = w * 5 / 8, qy2 = h;
    final double qx3 = w * 6 / 8, qy3 = h;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
