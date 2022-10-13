import 'package:complex_ui/screens/doc_ui/doc_details/doc_details_screen.dart';
import 'package:complex_ui/screens/doc_ui/doc_home/doc_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/common_widgets/doc_float_button.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';
import 'package:complex_ui/screens/doc_ui/doc_clippers.dart';

class DocNavBar extends StatelessWidget {
  const DocNavBar(
      {Key? key,
      required this.floatShadow,
      required this.navColor,
      required this.floatColor,
      required this.screen,
      required this.floatBackColor})
      : super(key: key);
  final Color navColor, floatBackColor, floatColor;
  final List<Color> floatShadow;
  final String screen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTrue = screen.contains('home');
    return SizedBox(
      height: kToolbarHeight + 40,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: ClipPath(
              clipper: DocHNavBarClip(),
              child: Container(color: isTrue ? ashhLight : dFloatColor),
            ),
          ),
          Positioned.fill(
            top: 4,
            child: ClipPath(
              clipper: DocHNavBarClip(),
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                color: navColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        isTrue
                            ? null
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const DocHomeScreen()));
                      },
                      child: Image.asset('assets/mydoc/icon/home.png',
                          color: buttonColor,
                          width: 30,
                          height: 30,
                          fit: BoxFit.contain),
                    ),
                    const SizedBox(width: 1),
                    InkWell(
                      onTap: () {
                        isTrue
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const DocDetailsScreen()))
                            : null;
                      },
                      child:
                          const Icon(CupertinoIcons.clock, color: buttonColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -22,
            left: size.width / 2 - 43,
            child: DocFloatButton(
              floatBackColor: floatBackColor,
              floatColor: floatColor,
              floawShadow: floatShadow,
            ),
          ),
        ],
      ),
    );
  }
}
