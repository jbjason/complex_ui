import 'package:complex_ui/screens/furniture_ui/furniture.dart';
import 'package:flutter/material.dart';

class FurHAppBar extends StatelessWidget {
  const FurHAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar
          SizedBox(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Menu Button
                Image.asset(
                  'assets/furniture/fur_icon/menu.png',
                  width: 35,
                  fit: BoxFit.contain,
                ),
                // Search Button
                Container(
                  clipBehavior: Clip.none,
                  width: 180,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: orangeDark,
                    boxShadow: const [
                      BoxShadow(
                          color: orangeDark,
                          spreadRadius: 1,
                          blurRadius: 20,
                          offset: Offset(2, 2)),
                      BoxShadow(
                          color: Colors.white,
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(-5, -5))
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white24),
                          child: const Icon(Icons.search, color: Colors.white)),
                      const SizedBox(width: 6),
                      const Text(
                        'Search products',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // Title
          const Text(
            'Unique Style',
            style: TextStyle(
                fontSize: 26,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w900,
                wordSpacing: 1.6),
          ),
          const Text(
            'Home Product',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.5,
                wordSpacing: 1.6),
          ),
          const SizedBox(height: 7),
          // Subtitle
          const Text(
            'Customized your favorite product',
            style:
                TextStyle(fontSize: 13, letterSpacing: 1.5, color: textColor),
          ),
        ],
      ),
    );
  }
}
