import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';
import 'package:complex_ui/screens/car_ui/car_details/card_car_image.dart';
import 'package:complex_ui/screens/car_ui/car_details/card_close_icon.dart';
import 'package:complex_ui/screens/car_ui/car_details/card_logo_and_title.dart';
import 'package:complex_ui/screens/car_ui/car_details/card_rental_button.dart';
import 'package:complex_ui/screens/car_ui/car_details/card_specification.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({Key? key, required this.car}) : super(key: key);
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenDark,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CarDCloseIcon(),
            const SizedBox(height: 10),
            CarDLogoAndTitle(car: car),
            const SizedBox(height: 10),
            Container(
              height: 100,
              padding: const EdgeInsets.only(left: 20),
              child: CarDSpecification(car: car),
            ),
            Expanded(child: CarDCarImage(car: car)),
            CarDRentalButton(car: car),
          ],
        ),
      ),
    );
  }
}
