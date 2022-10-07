import 'package:complex_ui/screens/doc_ui/doc_home/doc_home_screen.dart';
import 'package:complex_ui/screens/furniture_ui/fur_home/fur_home_screen.dart';
import 'package:complex_ui/screens/meditation_ui/welcome_screen/med_wel_screen.dart';
import 'package:complex_ui/screens/travel_ui/trav_screens/trav_wel_screen.dart';
import 'package:complex_ui/widgets/home_button.dart';
import 'package:complex_ui/widgets/home_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeTitle(title: 'COMPLEX UI'),
              _project(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _project() => Column(
        children: const [
          HomeButton(title: 'Meditation UI', route: MedWelScreen()),
          HomeButton(title: 'Travel UI', route: TravWelScreen()),
          HomeButton(title: 'Furniture UI', route: FurHomeScreen()),
          HomeButton(title: 'MyDoc UI', route: DocHomeScreen()),
        ],
      );
}
