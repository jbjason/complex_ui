import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';

class DocHSearchField extends StatelessWidget {
  const DocHSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 42,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: dFloatColor.withOpacity(.3),
              offset: const Offset(-0.5, 0.5),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: blueDark,
              offset: Offset(1.5, -2.5),
              blurRadius: 1.0,
              spreadRadius: 2.5,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: dFloatColor.withOpacity(.3),
                offset: const Offset(-0.5, 0.5),
                blurRadius: 1.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: searchColor.withOpacity(0.3),
                offset: const Offset(5.0, -5.0),
                blurRadius: 1.0,
                spreadRadius: 1.0,
              ),
            ],
            gradient: LinearGradient(
              colors: [
                searchColor,
                searchColor.withOpacity(0.8),
                searchColor.withOpacity(0.5),
                searchColor.withOpacity(0.3),
              ],
            ),
          ),
          child: const TextField(
            textAlign: TextAlign.start,
            style: TextStyle(color: ashhLight),
            cursorColor: buttonColor,
            decoration: InputDecoration(
              fillColor: Colors.red,
              labelText: 'Search...',
              labelStyle: TextStyle(
                fontSize: 13, // or whatever
                height: 1,
                color: ashhLight,
              ),
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search, color: buttonColor),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
        ),
      ),
    );
  }
}
