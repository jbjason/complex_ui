import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_clipper.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartHNavBar extends StatefulWidget {
  const CartHNavBar({Key? key}) : super(key: key);
  @override
  State<CartHNavBar> createState() => _CartHNavBarState();
}

class _CartHNavBarState extends State<CartHNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Row(
        children: [
          _navItem(CupertinoIcons.home, 0),
          _navItem(CupertinoIcons.search, 1),
          _navItem(CupertinoIcons.waveform, 2),
          _navItem(CupertinoIcons.person_2, 3),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, int i) => Expanded(
        child: InkWell(
          onTap: () => setState(() => _currentIndex = i),
          child: Container(
            color: blueBack,
            child: ClipPath(
              clipper: i == _currentIndex ? CartHNavSelcted() : null,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.white38,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      whiteCardG1.withOpacity(0.8),
                      whiteCardG1.withOpacity(0.7),
                      whiteCardG1.withOpacity(0.8),
                      //whiteCardG1,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 2),
                    Icon(icon, color: textColor),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
