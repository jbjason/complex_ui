import 'package:complex_ui/screens/furniture_ui/fur_details/furdet_appbar.dart';
import 'package:complex_ui/screens/furniture_ui/fur_details/furdet_attributes.dart';
import 'package:complex_ui/screens/furniture_ui/fur_details/furdet_black_shadow.dart';
import 'package:complex_ui/screens/furniture_ui/fur_details/furdet_body.dart';
import 'package:complex_ui/screens/furniture_ui/fur_details/furdet_images_counter.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/furniture_ui/furniture.dart';

class FurDetailsScreen extends StatelessWidget {
  const FurDetailsScreen({Key? key, required this.furniture}) : super(key: key);
  final Furniture furniture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brownDark,
      body: Stack(
        children: [
          // images & image counter
          FurDetImagesCounter(images: furniture.img),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 15),
                  FurDetAppBar(title: furniture.title),
                  // body Attributes
                  const FurDetAttributes(),
                  Expanded(child: FurDetBody(furniture: furniture)),
                ],
              ),
            ),
          ),
          // bottom stand black Shadow
          const FurDetBlackShadow(),
        ],
      ),
    );
  }
}
