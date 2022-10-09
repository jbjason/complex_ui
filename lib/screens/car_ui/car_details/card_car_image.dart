import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';
import 'package:complex_ui/screens/car_ui/car_details/card_image_counter.dart';
import 'package:complex_ui/screens/car_ui/car_details/card_yellow_painter.dart';
// ignore: depend_on_referenced_packages
import 'package:vector_math/vector_math.dart' as math;

class CarDCarImage extends StatelessWidget {
  const CarDCarImage({Key? key, required this.car}) : super(key: key);
  final Car car;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final currentImg = ValueNotifier<int>(0);
    return Column(
      children: [
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Green shadow
              Center(child: _greenShadow(width)),
              // Yellow Circle
              Positioned(
                bottom: 20,
                width: width,
                height: width,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.identity()..rotateX(math.radians(65)),
                  child: CustomPaint(painter: CarDYellowPainter()),
                ),
              ),
              // Arrow round Icon
              Positioned(
                bottom: 0,
                left: width / 2 - 25,
                child: Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: buttonColor),
                  child: Image.asset('assets/car/car_icon/arrow_round.png',
                      color: Colors.white, fit: BoxFit.contain),
                ),
              ),
              // Image
              Positioned.fill(
                top: -40,
                left: -40,
                right: -40,
                bottom: -40,
                child: PageView.builder(
                  onPageChanged: (value) => currentImg.value = value,
                  itemCount: car.img.length,
                  itemBuilder: (context, i) => Hero(
                    tag: '${car.img[0]} car$i',
                    child: Image.asset(car.img[i], fit: BoxFit.contain),
                  ),
                ),
              ),
            ],
          ),
        ),
        CarDImageCounter(img: car.img, currentImg: currentImg),
      ],
    );
  }

  Widget _greenShadow(double width) => Container(
        width: width,
        height: width * .8,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: dImgaeBack,
              blurRadius: 90,
              offset: Offset(-5, -5),
              spreadRadius: 5,
            ),
            BoxShadow(
              color: dImgaeBack,
              blurRadius: 90,
              offset: Offset(5, -5),
              spreadRadius: 5,
            )
          ],
        ),
      );
}
