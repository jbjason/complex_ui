import 'package:flutter/material.dart';
import 'package:complex_ui/screens/switch_app/sw_clipper/swh_clock_painter.dart';
import 'package:complex_ui/screens/switch_app/sw_home/swh_ash_circle.dart';
import 'package:complex_ui/screens/switch_app/sw_home/swh_body_top.dart';
import 'package:complex_ui/screens/switch_app/sw_home/swh_color_circle.dart';

class SwhBody extends StatelessWidget {
  const SwhBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Expanded(child: SwhBodyTop()),
        SizedBox(
          height: size.height * .4,
          width: size.width,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Colorful circle & white indicator
              const SwhColorCircle(),
              // OutSide behind thicker Ash circle
              const SwhAshCircle(strokeWidth: 1.3),
              // outSide uppder wider white circle
              const SwhAshCircle(strokeWidth: 7),
              // lowHigh text
              _lowRightText(),
              // Clock Circl & Pulse
              Center(
                child: SizedBox(
                  height: size.height * .24,
                  width: size.height * .24,
                  child: CustomPaint(painter: SwhClockPainter()),
                ),
              ),
              // Center PowerOff Button
              Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.4,
                      color: const Color(0xFF0097A7),
                    ),
                  ),
                  child: const Icon(
                    Icons.power_settings_new,
                    color: Color(0xFF0097A7),
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _lowRightText() => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Low', style: TextStyle(color: Colors.grey)),
              Text('High', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      );
}
