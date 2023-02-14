import 'package:flutter/material.dart';
import 'package:complex_ui/screens/weather_ui/wt_constants.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_painters.dart';

class WtrBottomSwitch extends StatelessWidget {
  const WtrBottomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: rBackThirdColor.withOpacity(.3),
            offset: const Offset(-0.5, 0.5),
            blurRadius: 1.0,
            spreadRadius: 1.0,
          ),
          const BoxShadow(
            color: rBackColor,
            offset: Offset(1, -1),
            blurRadius: 1.0,
            spreadRadius: 1.4,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              rBodyMiddleColor,
              rBodyMiddleColor.withOpacity(0.8),
            ],
          ),
        ),
        child: CustomPaint(painter: WtrSwitchPainter()),
      ),
    );
  }
}
