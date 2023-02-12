import 'package:flutter/cupertino.dart';

const buttonDarkColor = Color(0xFF636380);
const buttonLightColor = Color(0xFF8D8AA7);

const rBackColor = Color(0xFF121429);
const rBackSecondColor = Color(0xFF354370);
const rBackThirdColor = Color(0xFF536AA8);
const rBodyTopColor = Color(0xFF293156);
const rBodyMiddleColor = Color(0xFF34426F);
const rBodyBottomColor = Color(0xFF3D5289);
const rNavColor = Color(0xFF293662);
const rThunderColor = Color(0xFF0B54BE);
const rRainColor = Color(0xFF5768A3);
const rSnowColor = Color(0xFF596DAA);
const rListTopColor = Color(0xFF4C628C);
const rListBottomColor = Color(0xFF6F8BB6);
const rSwtichRightColor = Color(0xFF7E8AB4);
const rSwtichLeftColor = Color(0xFF53608D);

const cBackCloudColor = Color(0xFF324063);
const cFrontCloudColor = Color(0xFFBBCBE5);

const cBackColor = Color(0xFF17212D);
const cBackSecondColor = Color(0xFF2C384E);
const cBackThirdColor = Color(0xFF586B8B);
const cBodyTopColor = Color(0xFF2B354E);
const cBodyleftColor = Color(0xFF3E4D6A);
const cNavColor = Color(0xFF2B3B55);
const cStormColor = Color(0xFF0B54BE);
const cRainColor = Color(0xFF5768A3);
const cSnowSecondColor = Color(0xFFD0DBE5);
const cSnowColor = Color(0xFFFFFFFF);
const cCloudColor = Color(0xFF374866);

class Weather {
  final String date;
  final String temp;
  final String img;
  const Weather({required this.date, required this.temp, required this.img});
}

const List<Weather> weathers1 = [
  Weather(
      date: 'Mon', temp: '30\u00B0', img: 'assets/weather/icons/cloud_i3.png'),
  Weather(
      date: 'The', temp: '31\u00B0', img: 'assets/weather/icons/cloud_i1.png'),
  Weather(
      date: 'Wed', temp: '32\u00B0', img: 'assets/weather/icons/cloud_i2.png'),
  Weather(
      date: 'Thu', temp: '33\u00B0', img: 'assets/weather/icons/cloud_i4.png'),
  Weather(
      date: 'Fri', temp: '34\u00B0', img: 'assets/weather/icons/cloud_i5.png'),
];

const List<Weather> weathers2 = [
  Weather(date: 'Mon', temp: '30\u00B0', img: 'assets/weather/icons/cloud_i6'),
  Weather(date: 'The', temp: '31\u00B0', img: 'assets/weather/icons/cloud_i1'),
  Weather(date: 'Wed', temp: '32\u00B0', img: 'assets/weather/icons/cloud_i7'),
  Weather(date: 'Thu', temp: '33\u00B0', img: 'assets/weather/icons/cloud_i8'),
  Weather(date: 'Fri', temp: '34\u00B0', img: 'assets/weather/icons/cloud_i9'),
];
