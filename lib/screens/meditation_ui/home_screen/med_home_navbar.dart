import 'package:flutter/material.dart';
import 'package:complex_ui/screens/meditation_ui/home_screen/home_nav_clipper.dart';

class MedHomeNavBar extends StatelessWidget {
  const MedHomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        // white back shaow
        Positioned.fill(child: _backShadow()),
        // NavBar
        Positioned(
          bottom: 0,
          child: SizedBox(
            height: 70,
            width: size.width,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Nav back Blue Color
                Positioned.fill(
                  child:
                      ClipPath(clipper: HomeNavClipper(), child: _blueShow()),
                ),
                // actual Nav with White back
                Positioned(
                  bottom: 0,
                  height: 66,
                  width: size.width,
                  child: ClipPath(
                    clipper: HomeNavClipper(),
                    child: Container(
                      color: Colors.white.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('2.00', style: TextStyle(color: Colors.grey)),
                          Text('You\'re Somebody Else'),
                          Text('0.04', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                ),
                // play button
                Positioned(
                  top: -25,
                  left: size.width / 2 - 28,
                  child: _playButton(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _playButton() => Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Colors.white),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blueGrey.shade900,
                Colors.blue.shade700,
              ]),
        ),
        child: Container(
          margin: const EdgeInsets.all(7),
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 40,
          ),
        ),
      );
  Widget _blueShow() => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blueGrey.shade800,
            Colors.blue.shade800,
            Colors.blue.shade700,
            Colors.blue.shade100,
            Colors.white,
          ]),
        ),
      );
  Widget _backShadow() => Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.white60,
            spreadRadius: 20,
            blurRadius: 100,
          ),
          BoxShadow(
            color: Colors.white54,
            spreadRadius: 20,
            blurRadius: 100,
          ),
        ]),
      );
}
