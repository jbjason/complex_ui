import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';
import 'package:complex_ui/screens/car_ui/car_home/carh_appbar.dart';
import 'package:complex_ui/screens/car_ui/car_home/carh_available_text.dart';
import 'package:complex_ui/screens/car_ui/car_home/carh_category.dart';
import 'package:complex_ui/screens/car_ui/car_home/carh_listview.dart';
import 'package:complex_ui/screens/car_ui/car_home/carh_navbar.dart';
import 'package:complex_ui/screens/car_ui/car_home/carh_title_text.dart';

class CarHomeScreen extends StatelessWidget {
  const CarHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50, child: CarHAppbar()),
              const SizedBox(height: 20),
              const CarHTitleText(),
              const SizedBox(height: 30),
              const SizedBox(height: 50, child: CarHCategory()),
              const SizedBox(height: 20),
              const SizedBox(height: 50, child: CarHAvailableText()),
              SizedBox(
                height: cars.length * 270,
                child: const CarHListView(),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const CarHNavBar(),
    );
  }
}
