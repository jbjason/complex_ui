import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';

class CarHAvailableText extends StatelessWidget {
  const CarHAvailableText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Available cars',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w400, color: greenDark),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(7),
          width: 40,
          child: Image.asset(
            'assets/car/car_icon/menu2.png',
            fit: BoxFit.contain,
            color: greenDark,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(7),
          width: 40,
          child: Image.asset(
            'assets/car/car_icon/settings2.png',
            fit: BoxFit.contain,
            color: hInActiveColor,
          ),
        ),
      ],
    );
  }
}
