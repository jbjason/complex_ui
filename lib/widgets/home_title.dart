import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: RadialGradient(colors: [
          Colors.white,
          Colors.white,
          Colors.white60,
          Colors.white38,
          Colors.white12,
        ], focal: Alignment.centerLeft),
      ),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700]!),
      ),
    );
  }
}
