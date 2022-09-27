import 'package:complex_ui/constant/constant.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key, required this.title, required this.route})
      : super(key: key);
  final String title;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => route)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 100,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: customShadow,
        ),
        child: Stack(
          children: [
            Positioned(
              top: -140,
              right: -100,
              width: 200,
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white38,
                  boxShadow: customShadow,
                ),
              ),
            ),
            Positioned.fill(
              top: -50,
              left: -300,
              bottom: -50,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white38,
                  boxShadow: customShadow,
                ),
              ),
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
