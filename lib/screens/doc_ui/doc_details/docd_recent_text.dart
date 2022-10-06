import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';

class DocDRecentText extends StatelessWidget {
  const DocDRecentText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, bottom: 5, right: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(CupertinoIcons.clock, size: 20, color: buttonColor2),
              SizedBox(width: 5),
              Text(
                'Recent',
                style: TextStyle(
                    fontSize: 11,
                    color: buttonColor2,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: const [
              Icon(Icons.menu_outlined, size: 20, color: buttonColor2),
              SizedBox(width: 5),
              Icon(CupertinoIcons.square_grid_4x3_fill,
                  size: 20, color: buttonColor2),
            ],
          )
        ],
      ),
    );
  }
}
