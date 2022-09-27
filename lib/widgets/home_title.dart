import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        gradient: RadialGradient(colors: [
          Colors.white,
          Colors.white70,
          Colors.white60,
          Colors.white38,
        ], focal: Alignment.centerLeft),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]!),
        ),
      ),
    );
  }
}
