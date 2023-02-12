import 'package:flutter/material.dart';
import 'package:complex_ui/screens/weather_ui/wt_constants.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_top_widgets/wtr_back_cloud.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:vector_math/vector_math_64.dart' as math;

class WtrTopBody extends StatelessWidget {
  const WtrTopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Text(
          'Miami, FL',
          style: GoogleFonts.bebasNeue(
              textStyle: const TextStyle(color: Colors.white54)),
        ),
        Text(
          '30\u00B0',
          style: GoogleFonts.lobster(
            textStyle: const TextStyle(
                fontWeight: FontWeight.w800, color: Colors.white, fontSize: 34),
          ),
        ),
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Back Cloud
              WtrBackCloud(size: size),
              // blue shadow
              Positioned(
                top: size.height * .2,
                left: size.width * .4,
                width: 40,
                height: 180,
                child: DecoratedBox(
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: rThunderColor.withOpacity(0.5),
                      spreadRadius: 20,
                      blurRadius: 20,
                      offset: const Offset(0, -8),
                    ),
                    const BoxShadow(
                      color: rThunderColor,
                      spreadRadius: 35,
                      blurRadius: 80,
                      offset: Offset(0, 20),
                    ),
                  ]),
                ),
              ),
              // Thunder
              Positioned(
                top: size.height * .24,
                left: size.width * .38,
                child: Image.asset(
                  'assets/weather/thunder1.png',
                  width: size.width * .24,
                  fit: BoxFit.contain,
                  color: Colors.white60,
                ),
              ),
              // rain
              Positioned(
                left: size.width * .14,
                top: size.height * .14,
                child: Image.asset(
                  'assets/weather/rain3.png',
                  height: size.height * .42,
                  width: size.width * .58,
                  color: rRainColor,
                  fit: BoxFit.fill,
                ),
              ),
              // front Cloud
              Positioned(
                top: size.height * .04,
                left: size.width * .12,
                child: Image.asset(
                  'assets/weather/cloud1.png',
                  width: size.width * .8,
                  height: size.height * .34,
                  color: cFrontCloudColor,
                  fit: BoxFit.fill,
                ),
              ),
              // rain Drop
              for (int i = 0; i < 35; i++)
                Positioned(
                  bottom: _randomRainBotom(),
                  left: size.width * _randomRainLeft(),
                  child: Image.asset(
                    'assets/weather/snowB1.png',
                    width: _randomRainWidth(),
                    color: cRainColor,
                    fit: BoxFit.cover,
                  ),
                ),
              // Snow image
              Positioned(
                bottom: 0,
                right: -20,
                child: Transform.rotate(
                  angle: math.radians(-6),
                  child: Image.asset(
                    'assets/weather/snow1.png',
                    color: rSnowColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  double _randomRainLeft() => (Random().nextInt(65) + 6) / 100;
  double _randomRainBotom() => Random().nextInt(30) + 60;
  double _randomRainWidth() => Random().nextInt(5) + 2;
}
