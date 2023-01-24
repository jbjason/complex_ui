import 'package:flutter/material.dart';
import 'package:complex_ui/screens/switch_app/sw_clipper/swh_circular_painter.dart';

class SwhColorCircle extends StatelessWidget {
  const SwhColorCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: size.height * .28,
        width: size.height * .28,
        child: const CustomPaint(
          painter: SwhCircularPainter(
            strokeWidth: 5.5,
            circleRadius: 12,
            isProgress: true,
            colors: [
              Colors.deepOrangeAccent,
              Colors.greenAccent,
              Color(0xFF913A84),
              Colors.deepOrangeAccent,
            ],
          ),
        ),
      ),
    );
  }
}
