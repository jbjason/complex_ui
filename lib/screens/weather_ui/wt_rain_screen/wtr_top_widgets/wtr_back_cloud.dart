import 'package:flutter/material.dart';
import 'package:complex_ui/screens/weather_ui/wt_constants.dart';

class WtrBackCloud extends StatelessWidget {
  const WtrBackCloud({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * .07,
      left: size.width * .12,
      child: _clouds(
        Image.asset(
          'assets/weather/cloud3.png',
          width: size.width * .8,
          height: size.height * .26,
          color: rBodyTopColor,
          fit: BoxFit.fill,
        ),
        rBackColor,
        rBodyTopColor,
      ),
    );
  }

  Widget _clouds(Widget child, Color bottom, Color top) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: bottom,
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(-30, 35),
            ),
            BoxShadow(
              color: top.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: child,
      );
}
