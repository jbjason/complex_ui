import 'package:flutter/material.dart';
import 'package:complex_ui/screens/meditation_ui/welcome_screen/med_wel_appbar.dart';
import 'package:complex_ui/screens/meditation_ui/welcome_screen/med_wel_body.dart';
import 'package:complex_ui/screens/meditation_ui/welcome_screen/med_wel_navbar.dart';

class MedWelScreen extends StatelessWidget {
  const MedWelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Body Images
          const MedWelBody(),
          // AppBar
          const MedWelAppBar(),
          // NavBar
          Positioned(
            bottom: 0,
            height: 85,
            width: size.width,
            child: const MedWelNavBar(),
          ),
        ],
      ),
    );
  }
}

const primaryColor = Color(0xFFCADCED);
final customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.2),
    spreadRadius: 5,
    offset: const Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue[900]!.withOpacity(0.2),
    spreadRadius: 2,
    offset: const Offset(7, 7),
    blurRadius: 20,
  ),
];
