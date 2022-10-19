import 'package:complex_ui/screens/furniture_ui/fur_home/furh_appbar.dart';
import 'package:complex_ui/screens/furniture_ui/fur_home/furh_category.dart';
import 'package:complex_ui/screens/furniture_ui/fur_home/furh_products.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/furniture_ui/fur_home/furh_navbar.dart';

class FurHomeScreen extends StatelessWidget {
  const FurHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              // Appbar ,Title & Subtile
              FurHAppBar(),
              SizedBox(height: 3),
              // category
              FurHCategory(),
              SizedBox(height: 10),
              // products List
              FurHProducts(),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const FurHNavBar(),
    );
  }
}
