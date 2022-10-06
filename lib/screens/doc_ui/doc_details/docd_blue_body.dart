import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';

class DocDBlueBody extends StatelessWidget {
  const DocDBlueBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [blueMDark, blueDark],
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: 7,
        itemBuilder: (context, i) {
          final isTrue = i == 0 ? true : false;
          return Align(
            alignment: Alignment.topCenter,
            child: UnconstrainedBox(
              child: Container(
                width: 50,
                height: isTrue ? size.height * .27 : size.height * .2,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.elliptical(25, 25),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      isTrue ? dFloatColor : dFloatColor.withOpacity(0.4),
                      blueDark.withOpacity(0.9),
                      blueDark,
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: blueDark,
                      offset: Offset(0, 1),
                      blurRadius: 20,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${myDocs.length - i}',
                        style: TextStyle(
                            fontWeight:
                                isTrue ? FontWeight.w900 : FontWeight.normal,
                            fontSize: isTrue ? 22 : 16,
                            color: Colors.white),
                      ),
                      isTrue
                          ? const Text(
                              'AUG',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          : const SizedBox(),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
