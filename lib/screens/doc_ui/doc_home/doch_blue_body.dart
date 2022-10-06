import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';
import 'package:complex_ui/screens/doc_ui/doc_home/doch_search_field.dart';

class DocHBlueBody extends StatelessWidget {
  const DocHBlueBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DocHSearchField(),
        const SizedBox(height: 10),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 30, right: 15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white10),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(-5, 0),
                        color: blueMDark,
                        spreadRadius: 1,
                        blurRadius: 30,
                      ),
                      BoxShadow(
                        offset: Offset(5, 0),
                        color: blueLight,
                        spreadRadius: 1,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      border: Border.all(color: dFloatColor, width: 0.5),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(33),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          blueLight,
                          blueMDark.withOpacity(0.6),
                          blueDark,
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Icon image, My Doc text & subtitle
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: blueDark,
                              ),
                              child: Image.asset(
                                  'assets/mydoc/doc_icon/record.png',
                                  fit: BoxFit.cover),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'MyDocs',
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    '3247 files,26 folder',
                                    style: TextStyle(
                                        fontSize: 11, color: buttonColor2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        // Linear Progress Indicator
                        Container(
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: blueDark,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 130,
                                height: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ashhLight,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        // text
                        Row(
                          children: const [
                            Spacer(),
                            Text(
                              '60 GB free',
                              style:
                                  TextStyle(fontSize: 11, color: buttonColor2),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Right Container with RRectangles
              Container(
                width: 80,
                margin: const EdgeInsets.only(top: 40),
                decoration: const BoxDecoration(
                  color: blueDark,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: 5,
                  itemBuilder: (context, i) => Container(
                    padding: const EdgeInsets.all(10),
                    height: 45,
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      color: blueLight,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
