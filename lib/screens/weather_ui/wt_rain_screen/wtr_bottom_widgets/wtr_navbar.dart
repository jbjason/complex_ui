import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/weather_ui/wt_constants.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_painters.dart';

class WtrNavBar extends StatelessWidget {
  const WtrNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WtrNavPainter(),
      child: Row(
        children: [
          const SizedBox(width: 30),
          Icon(CupertinoIcons.compass_fill,
              color: rBackColor.withOpacity(0.7), size: 35),
          const Spacer(),
          Icon(Icons.settings, color: rBackColor.withOpacity(0.7), size: 35),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
