import 'package:flutter/material.dart';

class CarDImageCounter extends StatelessWidget {
  const CarDImageCounter({
    Key? key,
    required this.currentImg,
    required this.img,
  }) : super(key: key);
  final ValueNotifier<int> currentImg;
  final List<String> img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          img.length,
          (index) => ValueListenableBuilder(
            valueListenable: currentImg,
            builder: (context, val, _) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 7,
              width: index != val ? 11 : 40,
              margin: const EdgeInsets.only(right: 7),
              decoration: BoxDecoration(
                color: index != val ? Colors.white60 : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
