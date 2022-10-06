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
      decoration: BoxDecoration(
        color: floatBackColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: floawShadow[0].withOpacity(0.5),
            offset: const Offset(-2, 0.5),
            blurRadius: 10,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: floawShadow[1],
            offset: const Offset(2, -0.5),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: floatBackColor,
          boxShadow: [
            const BoxShadow(
              color: Colors.transparent,
              blurRadius: 3,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: floawShadow[1],
              blurRadius: 3,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Image.asset('assets/mydoc/doc_icon/site.png',
            color: floatColor, fit: BoxFit.cover),
      ),
    );
  }
}
