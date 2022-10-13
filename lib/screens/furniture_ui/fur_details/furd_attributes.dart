import 'package:flutter/material.dart';

class FurDAttributes extends StatelessWidget {
  const FurDAttributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .5,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _furAttribute(Icons.light_sharp, '22W'),
          const SizedBox(height: 15),
          _furAttribute(Icons.height_sharp, '28 cm'),
          const SizedBox(height: 15),
          _furAttribute(Icons.width_wide, '26 cm'),
          const SizedBox(height: 15),
          _furAttribute(Icons.power, '1.8 cm'),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _furAttribute(IconData icon, String text) => Container(
        padding: const EdgeInsets.all(15),
        width: 80,
        decoration: BoxDecoration(
            color: Colors.white12, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            )
          ],
        ),
      );
}
