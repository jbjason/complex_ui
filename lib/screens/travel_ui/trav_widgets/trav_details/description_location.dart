import 'package:complex_ui/screens/travel_ui/translate_animation.dart';
import 'package:flutter/material.dart';

class DescriptionAndLocation extends StatelessWidget {
  const DescriptionAndLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TranslateAnimation(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.location_on, color: Colors.black26),
                Flexible(
                  child: Text(
                    'Bangladesh National Zoo, Mirpur Dhaka 1216',
                    style: TextStyle(color: Colors.blue),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text('$descrip \n\n$descrip'),
            const SizedBox(height: 20),
            const Text(
              'PLACES IN THIS COLLECTION',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

const descrip =
    "A dealer of illegal guns is bullied into being an informer for a cop who wants to put an end to this racket.A dealer of illegal guns is bullied into being an informer for a cop who wants to put an end to this racket.";
