import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';

class CarDLogoAndTitle extends StatelessWidget {
  const CarDLogoAndTitle({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Stack(
              children: [
                Positioned(
                  bottom: -10,
                  top: -10,
                  left: -10,
                  right: -10,
                  child: Image.asset('assets/car/car_icon/logo1.png',
                      fit: BoxFit.contain),
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                car.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: dTitleColor,
                  fontSize: 22,
                ),
              ),
              Text(
                car.subtitle,
                style: const TextStyle(color: textColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
