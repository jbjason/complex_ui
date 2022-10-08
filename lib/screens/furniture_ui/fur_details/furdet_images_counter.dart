import 'package:complex_ui/screens/furniture_ui/furniture.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class FurDetImagesCounter extends StatelessWidget {
  const FurDetImagesCounter({Key? key, required this.images}) : super(key: key);
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final currentImg = ValueNotifier<int>(0);
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        // angle Color containers
        Positioned(
          top: -100,
          height: size.height + 200,
          child: Transform.rotate(
            angle: 60 * 180 / math.pi,
            child: Row(
              children: [
                Container(width: 55, color: Colors.white38),
                Container(width: 60, color: brownLight),
                Container(width: 55, color: Colors.white30),
                Container(width: 50, color: Colors.white12),
              ],
            ),
          ),
        ),
        // image
        Positioned(
          top: 0,
          height: size.height * .7,
          width: size.width * .8,
          right: 0,
          child: PageView.builder(
            onPageChanged: (value) => currentImg.value = value,
            itemCount: images.length,
            itemBuilder: (context, i) => Hero(
              tag: 'details${images[0]}',
              child: Image.asset(images[i], fit: BoxFit.contain),
            ),
          ),
        ),
        // counter Container
        _imageCounter(size, currentImg),
      ],
    );
  }

  Widget _imageCounter(Size size, ValueNotifier<int> currentImg) => Positioned(
        top: size.height * .55,
        left: size.width * .4,
        child: SizedBox(
          height: 10,
          child: Row(
            children: List.generate(
              images.length,
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
        ),
      );
}
