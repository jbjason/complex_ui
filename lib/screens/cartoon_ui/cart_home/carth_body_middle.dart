import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_clipper.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartHBodyMiddle extends StatelessWidget {
  const CartHBodyMiddle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Post insights', style: TextStyle(color: textColor)),
                const Spacer(),
                Container(
                  height: 20,
                  width: 200,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(color: blueBack, spreadRadius: 1, blurRadius: 20)
                  ]),
                ),
                const SizedBox(height: 5),
                const Text('Accounts Reached',
                    style: TextStyle(color: textColor)),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: ClipPath(
            clipper: CartHBodyMiddleClip(),
            child: Container(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, bottom: 50, top: 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.5, 0.99],
                  colors: [Colors.white30, Colors.white24, whiteCardG1],
                ),
              ),
              child: ClipPath(
                clipper: CartHBodyMiddleClip(),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white30, Colors.white24, Colors.white30],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _followStat(
                          CupertinoIcons.heart_fill, cartoonUser[0].number),
                      _followStat(CupertinoIcons.chat_bubble_fill,
                          cartoonUser[1].number),
                      _followStat(Icons.park, cartoonUser[2].number),
                      _followStat(Icons.bookmarks, cartoonUser[3].number),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _followStat(IconData icon, int number) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: blueBack),
          const SizedBox(height: 2),
          Text(
            number.toString(),
            style: const TextStyle(
                fontSize: 11, fontWeight: FontWeight.bold, color: textColor),
          ),
        ],
      );
}
