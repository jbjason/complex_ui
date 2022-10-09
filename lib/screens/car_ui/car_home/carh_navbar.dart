import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';

class CarHNavBar extends StatelessWidget {
  const CarHNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: const BoxDecoration(
          color: greenDark,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(CupertinoIcons.home, color: buttonColor),
          Icon(Icons.notifications_on_outlined, color: hInActiveColor),
          Icon(Icons.message_sharp, color: hInActiveColor),
          Icon(CupertinoIcons.heart_slash, color: hInActiveColor),
          Icon(CupertinoIcons.person, color: hInActiveColor),
        ],
      ),
    );
  }
}
