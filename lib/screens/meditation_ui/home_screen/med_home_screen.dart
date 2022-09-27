import 'package:flutter/material.dart';
import 'package:complex_ui/screens/meditation_ui/home_screen/med_home_body.dart';
import 'package:complex_ui/screens/meditation_ui/home_screen/med_home_navbar.dart';

class MedHomeScreen extends StatelessWidget {
  const MedHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: const [
          MedHomeBody(),
          // NavBar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 120,
            child: MedHomeNavBar(),
          ),
        ],
      ),
    );
  }
}
