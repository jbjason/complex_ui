import 'package:flutter/material.dart';

const primaryColor = Color(0xFFCADCED);
final customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.2),
    spreadRadius: 5,
    offset: const Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue[900]!.withOpacity(0.2),
    spreadRadius: 2,
    offset: const Offset(7, 7),
    blurRadius: 20,
  ),
];
