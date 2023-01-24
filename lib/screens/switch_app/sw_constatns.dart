import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const backColor = Color(0xFF212531);
const backSecondColor = Color(0xFF646C79);
const backSecond2Color = Color(0xFF393F4B);
const navColor = Color(0xFF121621);
const navSecondColor = Color(0xFF272B38);
const textColor = Color(0xFF913A84);
const textSecondColor = Color(0xFF686D8F);
const circleColor = Color(0xFFC28C7C);
const circleSecondColor = Color(0xFFA7C4C3);
const button1Color = Color(0xFF1A92D2);
const button2Color = Color(0xFFAE3370);
const button3Color = Color(0xFF5B29C9);
const clockColor = Color(0xFF27283A);

TextStyle gettextColor(bool isReal) {
  return GoogleFonts.michroma(
    textStyle: TextStyle(
        fontSize: isReal ? 30 : 45,
        fontWeight: FontWeight.bold,
        foreground: Paint()
          ..shader = LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: isReal
                      ? [
                          const Color(0xFF1A92D2),
                          const Color(0xFF1A92D2),
                          const Color(0xFF913A84),
                          const Color(0xFFAE3370),
                        ]
                      : [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.white10,
                        ])
              .createShader(const Rect.fromLTWH(0, 0, 300, 100))),
  );
}
