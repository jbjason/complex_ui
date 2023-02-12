import 'package:flutter/material.dart';
import 'package:complex_ui/screens/weather_ui/wt_constants.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_bottom_widgets/wtr_bottom_list.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_bottom_widgets/wtr_bottom_switch.dart';
import 'package:complex_ui/screens/weather_ui/wt_rain_screen/wtr_painters.dart';

class WtrBottomBody extends StatelessWidget {
  const WtrBottomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WtrBottomPainter(),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 45, left: 50),
              child: Column(
                children: [
                  Row(
                    children: const [
                      SizedBox(width: 40),
                      Icon(Icons.calendar_month_outlined,
                          color: Colors.white38),
                      SizedBox(width: 10),
                      Text('Forecast', style: TextStyle(color: Colors.white38)),
                    ],
                  ),
                  const Expanded(child: WtrBottomList()),
                ],
              ),
            ),
          ),
          // Light Switch
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _getLightContainer(false),
              const SizedBox(width: 14),
              const WtrBottomSwitch(),
              const SizedBox(width: 14),
              _getLightContainer(true),
            ],
          ),
          const SizedBox(height: 10),
          // day & week text
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'DAY /',
                  style: TextStyle(color: Colors.white38, fontSize: 10),
                ),
                TextSpan(
                  text: ' WEEK',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _getLightContainer(bool isTrue) {
    return Container(
      height: 1,
      width: 1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: isTrue ? Colors.white : rNavColor,
            spreadRadius: 2,
            blurRadius: 6,
          ),
          BoxShadow(
            color: isTrue ? Colors.white : rNavColor,
            spreadRadius: 2,
          ),
        ],
      ),
    );
  }
}
