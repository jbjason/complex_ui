import 'package:flutter/material.dart';
import 'package:complex_ui/screens/switch_app/sw_clipper/swh_circular_painter.dart';

class SwhAshCircle extends StatelessWidget {
  const SwhAshCircle({Key? key, required this.strokeWidth}) : super(key: key);
  final double strokeWidth;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = _getColors();
    return Center(
      child: SizedBox(
        height: size.height * .36,
        width: size.height * .36,
        child: CustomPaint(
          painter: SwhCircularPainter(
            strokeWidth: strokeWidth,
            circleRadius: 7,
            isProgress: false,
            colors: colors,
          ),
        ),
      ),
    );
  }

  List<Color> _getColors() => strokeWidth == 7.0
      ? [
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.white54,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ]
      : [
          Colors.transparent,
          Colors.white10,
          Colors.white10,
          Colors.white10,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
        ];
}
