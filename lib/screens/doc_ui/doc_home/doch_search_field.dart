import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';

class DocHSearchField extends StatelessWidget {
  const DocHSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border:
              const Border.fromBorderSide(BorderSide(color: Colors.black12)),
          // boxShadow: [
          // BoxShadow(
          //   color: blueDark.withOpacity(0.5),
          //   blurRadius: 10,
          //   spreadRadius: 1,
          // )
          //  ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              blueDark.withOpacity(0.5),
              blueDark.withOpacity(0.3),
              blueDark.withOpacity(0.2),
              blueDark.withOpacity(0.3),
              blueDark.withOpacity(0.5),
            ],
          ),
        ),
        child: const TextField(
          textAlign: TextAlign.start,
          style: TextStyle(color: ashhLight),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            fillColor: Colors.red,
            labelText: 'Search...',
            labelStyle: TextStyle(
              fontSize: 16, // or whatever
              height: 1.4,
              color: ashhLight,
            ),
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search, color: ashhLight),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ),
      ),
    );
  }
}
