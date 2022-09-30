import 'package:complex_ui/screens/furniture_ui/fur_home/furhome_appbar.dart';
import 'package:complex_ui/screens/furniture_ui/fur_home/furhome_category.dart';
import 'package:complex_ui/screens/furniture_ui/fur_home/furhome_products.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/furniture_ui/fur_home/fur_navbar.dart';
import 'package:complex_ui/screens/furniture_ui/furniture.dart';

class FurHomeScreen extends StatelessWidget {
  const FurHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              // Appbar ,Title & Subtile
              FurHomeAppBar(),
              SizedBox(height: 3),
              // category
              FurHomeCategory(),
              SizedBox(height: 10),
              // products List
              FurHomeProducts(),
            ],
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatButton(),
      bottomNavigationBar: const FurNavBar(),
    );
  }

  Widget _floatButton() => FloatingActionButton(
        onPressed: () {},
        backgroundColor: brownDark,
        child: Image.asset(
          'assets/furniture/fur_icon/cart.png',
          color: Colors.white,
          height: 50,
          width: 30,
          fit: BoxFit.contain,
        ),
      );
}
