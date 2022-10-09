import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';

class CarDCloseIcon extends StatelessWidget {
  const CarDCloseIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: dIconBack1,
            boxShadow: [
              BoxShadow(
                color: dIconBack1,
                offset: Offset(5, -5),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Color(0xFF424242),
                offset: Offset(-5, 5),
                blurRadius: 30,
                spreadRadius: 1,
              )
            ],
          ),
          child: const Center(child: Icon(Icons.close, color: dTitleColor)),
        ),
      ),
    );
  }
}
