import 'package:flutter/material.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_clipper.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_home/carth_activity_list.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_home/carth_follower_details.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartHBodyBottom extends StatelessWidget {
  const CartHBodyBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CartHBodyBottomClip(),
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white38, whiteCardG1, whiteCardG2],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 35),
            CartHFollowerDetails(),
            SizedBox(height: 10),
            Text(
              'Profile Activity\'s',
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(height: 50, child: CartHActivityList())
          ],
        ),
      ),
    );
  }
}
