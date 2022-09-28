import 'package:complex_ui/screens/travel_ui/places.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_home/status_tag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key? key,
    required Place places,
    required this.onPressed,
  })  : _places = places,
        super(key: key);

  final Place _places;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsetsDirectional.all(16),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          image: DecorationImage(
            image: AssetImage(_places.image),
            fit: BoxFit.cover,
            colorFilter: const ColorFilter.mode(
              Colors.black26,
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/travel/jb0.jpg'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _places.author,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .9,
                      ),
                    ),
                    const Text(
                      'yesterday at 5.30 p.m.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz, color: Colors.white),
                ),
              ],
            ),
            const Spacer(),
            const Text(
              'Mirpur Dhaka',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            const SizedBox(height: 10),
            const GradientStatusTag(),
            const Spacer(),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    shape: const StadiumBorder(),
                  ),
                  icon: const Icon(CupertinoIcons.heart, size: 26),
                  label: const Text('800'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    shape: const StadiumBorder(),
                  ),
                  icon: const Icon(CupertinoIcons.reply, size: 26),
                  label: const Text('230'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
