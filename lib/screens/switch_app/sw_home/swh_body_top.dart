import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/switch_app/sw_constatns.dart';

class SwhBodyTop extends StatelessWidget {
  const SwhBodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        // shadow text
        Positioned(
          left: 70,
          top: 0,
          child: RotatedBox(
            quarterTurns: 1,
            child: Text('Pendant Light', style: gettextColor(false)),
          ),
        ),
        // Real Text
        Positioned(
          left: 25,
          top: 100,
          child: RotatedBox(
            quarterTurns: 1,
            child: Text('Pendant Light', style: gettextColor(true)),
          ),
        ),
        // Light img at left
        Positioned(
          top: -120,
          left: -90,
          height: size.height * .5,
          child: Image.asset('assets/switch/light2.png', fit: BoxFit.cover),
        ),
        // Light img at right
        Positioned(
          top: -40,
          right: -100,
          height: size.height * .48,
          child: Image.asset('assets/switch/light2.png', fit: BoxFit.cover),
        ),
        // middle img
        Positioned(
          top: 30,
          right: 10,
          height: size.height * .5,
          child: Image.asset('assets/switch/light2.png', fit: BoxFit.cover),
        ),
        // Appbar
        Positioned(
          top: 45,
          left: 25,
          right: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back_ios_new,
                    size: 26, color: Colors.white70),
              ),
              const Icon(CupertinoIcons.square_grid_2x2,
                  size: 32, color: Colors.white70),
            ],
          ),
        ),
      ],
    );
  }
}
