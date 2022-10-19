import 'package:flutter/material.dart';

const brownDark = Color(0xFF8D6E63);
const brownLight = Color(0xFFDDC2AB);
const orangeDark = Color(0xFFEBA55D);
const orangeLight = Color(0xFFFFCC96);
const textColor = Color(0xFFC5C4C3);
const titleColor = Color(0xFF353431);

class Furniture {
  final String title, details;
  final List<String> img;
  final String price;
  final List<Color> colors;

  const Furniture(
      {required this.title,
      required this.details,
      required this.img,
      required this.colors,
      required this.price});
}

const detail =
    'Computer programming is the process of performing a particular computation (or more generally, accomplishing a specific computing result), usually by designing and building an executable computer program.';
const colors = [Color(0xFFFFCC80), brownDark, orangeLight, Color(0xFFFFA726)];
final furnitures = [
  const Furniture(
    title: 'Chrome Lamp',
    details:
        'The User-friendly front operation panel and remote and control system.$detail',
    img: [
      'assets/furniture/fur_img/lamp0.png',
      'assets/furniture/fur_img/lamp1.png',
      'assets/furniture/fur_img/lamp2.png',
      'assets/furniture/fur_img/lamp3.png',
    ],
    colors: colors,
    price: '\$ 18.90',
  ),
  const Furniture(
    title: 'Bend Chair',
    details:
        'The User-friendly front operation panel and remote and control system.detail',
    img: [
      'assets/furniture/fur_img/chair0.png',
      'assets/furniture/fur_img/chair1.png',
      'assets/furniture/fur_img/chair2.png',
      'assets/furniture/fur_img/chair3.png',
    ],
    colors: colors,
    price: '\$ 26.00',
  ),
  const Furniture(
    title: 'Alarm Clock',
    details: detail,
    img: [
      'assets/furniture/fur_img/alarm1.png',
      'assets/furniture/fur_img/alarm2.png',
      'assets/furniture/fur_img/alarm0.png',
      'assets/furniture/fur_img/alarm3.png',
    ],
    colors: colors,
    price: '\$ 26.00',
  ),
  const Furniture(
    title: 'Oscillating Fan',
    details:
        'The User-friendly front operation panel and remote and control system.detail',
    img: [
      'assets/furniture/fur_img/fan3.png',
      'assets/furniture/fur_img/fan1.png',
      'assets/furniture/fur_img/fan2.png',
      'assets/furniture/fur_img/fan0.png',
    ],
    colors: colors,
    price: '\$ 22.67',
  ),
];
