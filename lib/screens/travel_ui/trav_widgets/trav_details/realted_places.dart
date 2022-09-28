import 'package:complex_ui/screens/travel_ui/places.dart';
import 'package:flutter/material.dart';

class RelatedPlaces extends StatelessWidget {
  const RelatedPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: places.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemExtent: 150,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                places[places.length - 1 - index].image,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
