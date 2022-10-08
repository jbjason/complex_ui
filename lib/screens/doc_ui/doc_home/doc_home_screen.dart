import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';
import 'package:complex_ui/screens/doc_ui/common_widgets/doc_appbar.dart';
import 'package:complex_ui/screens/doc_ui/doc_home/doch_blue_body.dart';
import 'package:complex_ui/screens/doc_ui/doc_home/doch_white_body.dart';
import 'package:complex_ui/screens/doc_ui/common_widgets/doc_navbar.dart';

class DocHomeScreen extends StatelessWidget {
  const DocHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blueLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // AppBar
          const SizedBox(
            height: kToolbarHeight + 60,
            child: DocAppBar(color: blueMDark),
          ),
          // body
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // SearchBox ,total MyDocs Container
                Positioned(
                  left: 0,
                  right: 0,
                  height: size.height * .4,
                  child: const DocHBlueBody(),
                ),
                // white body
                Positioned(
                  top: size.height * .2,
                  height: size.height * .7,
                  left: 0,
                  right: 0,
                  child: const DocHWhiteBody(),
                ),
                // bottom White Shadow
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: size.height * .13,
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: ashDark,
                        spreadRadius: 2,
                        blurRadius: 50,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: const DocNavBar(
        screen: 'home',
        navColor: ashDark,
        floatShadow: [Colors.white, dFloatColor],
        floatColor: blueLight,
        floatBackColor: ashhLight,
      ),
    );
  }
}
