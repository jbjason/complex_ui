import 'package:complex_ui/screens/furniture_ui/furniture.dart';
import 'package:flutter/material.dart';

class FurDAppBar extends StatelessWidget {
  const FurDAppBar({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: _appBarIcon(Icons.arrow_back_ios_new_sharp),
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          _appBarIcon(Icons.more_vert_sharp),
        ],
      ),
    );
  }

  Widget _appBarIcon(IconData icon) => Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Icon(icon, color: brownDark),
      );
}
