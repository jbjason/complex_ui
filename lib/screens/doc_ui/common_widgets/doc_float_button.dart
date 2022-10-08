import 'package:flutter/material.dart';

class DocFloatButton extends StatelessWidget {
  const DocFloatButton(
      {Key? key,
      required this.floatColor,
      required this.floawShadow,
      required this.floatBackColor})
      : super(key: key);
  final List<Color> floawShadow;
  final Color floatBackColor, floatColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(color: floatBackColor, shape: BoxShape.circle),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: floatBackColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, -5),
              color: floawShadow[0],
              spreadRadius: 5,
              blurRadius: 40,
            ),
            BoxShadow(
              offset: const Offset(-10, 10),
              color: floawShadow[1],
              spreadRadius: 1,
              blurRadius: 30,
            ),
          ],
        ),
        child: Image.asset('assets/mydoc/doc_icon/site.png',
            color: floatColor, fit: BoxFit.cover),
      ),
    );
  }
}
