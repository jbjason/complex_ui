import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';

class CarDSpecification extends StatelessWidget {
  const CarDSpecification({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: car.specifications.length,
      itemBuilder: (context, i) => _carSpecification(car.specifications[i]),
    );
  }

  Widget _carSpecification(Specifications spec) => Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white24),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              dIconBack1,
              dIconBack2,
              dIconBack3,
            ],
          ),
        ),
        margin: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                spec.img,
                fit: BoxFit.contain,
                color: hInActiveColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: RichText(
                text: TextSpan(
                  text: spec.subTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: dTitleColor,
                  ),
                  children: [
                    TextSpan(
                      text: spec.tag,
                      style: const TextStyle(fontSize: 13, color: textColor),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
