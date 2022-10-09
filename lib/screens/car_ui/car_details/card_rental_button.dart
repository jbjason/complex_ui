import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';

class CarDRentalButton extends StatelessWidget {
  const CarDRentalButton({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(left: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            dIconBack1,
            dIconBack2,
            dIconBack3,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                car.price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: dTitleColor,
                ),
              ),
              Text(car.tag, style: const TextStyle(color: textColor))
            ],
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: const BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
            ),
            child: const Text(
              'Rental now',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: dTitleColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
