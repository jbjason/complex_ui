import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:complex_ui/screens/switch_app/sw_clipper/swd_bottom_painter.dart';
import 'package:complex_ui/screens/switch_app/sw_clipper/swd_temp_painter.dart';
import 'package:complex_ui/screens/switch_app/sw_details/swd_temp_list.dart';

class SwdTempContainer extends StatelessWidget {
  const SwdTempContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        // Temperature text
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: size.height * .1,
          child: CustomPaint(
            painter: SwdBottomPainter(),
            child: Align(
              alignment: const Alignment(0, 0.4),
              child: Text(
                'Temperature',
                style: GoogleFonts.michroma(
                  textStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
        // Temp List
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          height: size.height * .2,
          child: CustomPaint(
            painter: SwdTempPainter(),
            child: const Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: SwdTempList(),
            ),
          ),
        ),
      ],
    );
  }
}
