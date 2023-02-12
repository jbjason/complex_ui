import 'package:flutter/material.dart';
import 'package:complex_ui/screens/weather_ui/wt_constants.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_bottom_widgets/wtr_bottom_body.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_bottom_widgets/wtr_navbar.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_top_widgets/wtr_top_body.dart';

class WtRainScreen extends StatelessWidget {
  const WtRainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          // background Color setting
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      rBackThirdColor,
                      rBackSecondColor,
                      rBackColor,
                      rBackColor,
                    ]),
              ),
            ),
          ),
          // Bottom Body
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: size.height * .35,
            child: const WtrBottomBody(),
          ),
          // Top Body
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 0,
            right: 0,
            height: size.height * .7,
            child: const WtrTopBody(),
          ),
          Positioned(
            bottom: -size.height * .018,
            right: -20,
            child: Image.asset('assets/weather/snow5.png', color: rSnowColor),
          ),
          // Nav Container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: size.height * .08,
            child: const WtrNavBar(),
          ),
        ],
      ),
    );
  }
}
