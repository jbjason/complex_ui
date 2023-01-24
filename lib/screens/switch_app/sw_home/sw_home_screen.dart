import 'package:complex_ui/screens/switch_app/sw_constatns.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/switch_app/sw_clipper/swh_body_painter.dart';
import 'package:complex_ui/screens/switch_app/sw_details/sw_details_screen.dart';
import 'package:complex_ui/screens/switch_app/sw_home/swh_body.dart';
import 'package:complex_ui/screens/switch_app/sw_home/swh_navbar.dart';

class SwHomeScreen extends StatelessWidget {
  const SwHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        children: [
          // Body
          Expanded(
            child: CustomPaint(
              painter: SwhBodyPainter(),
              child: const SwhBody(),
            ),
          ),
          // NavBar
          SizedBox(
            height: size.height * .12,
            width: size.width,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SwDetailsScreen()));
                },
                child: const SwhNavBar()),
          ),
        ],
      ),
    );
  }
}
