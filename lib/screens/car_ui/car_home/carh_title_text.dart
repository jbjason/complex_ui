import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';

class CarHTitleText extends StatelessWidget {
  const CarHTitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Hello, ',
        style: TextStyle(fontSize: 25, color: textColor),
        children: [
          TextSpan(
            text: 'Jason',
            style: TextStyle(fontSize: 25, color: greenDark),
          )
        ],
      ),
    );
  }
}
