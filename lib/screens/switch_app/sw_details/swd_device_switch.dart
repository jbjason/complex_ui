import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwdDeviceSwitch extends StatelessWidget {
  const SwdDeviceSwitch(
      {Key? key,
      required this.color,
      required this.icon,
      required this.isOn,
      required this.width})
      : super(key: key);
  final double width;
  final bool isOn;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 4.5,
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF393F4B),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // on Text
          Positioned(
            top: 5,
            left: 0,
            right: 0,
            child: _onOffText('On', Colors.greenAccent),
          ),
          // off Text
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: _onOffText('Off', Colors.redAccent),
          ),
          // icon & inner Coloful container
          Positioned(
            left: 5,
            right: 5,
            bottom: isOn ? width / 9 : 0,
            child: Container(
              padding: EdgeInsets.only(top: isOn ? 0 : 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: color,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: isOn
                      ? [
                          const Color(0xFF393F4B),
                          color,
                        ]
                      : [
                          color,
                          const Color(0xFF393F4B),
                        ],
                ),
              ),
              child: _insideContainer(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _insideContainer() => isOn
      ? Column(
          children: [
            Card(
              color: color,
              elevation: 15,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(icon, color: Colors.white, size: 25),
              ),
            ),
            const RotatedBox(
                quarterTurns: 3,
                child:
                    Icon(Icons.arrow_back_ios, color: Colors.white, size: 25)),
            const RotatedBox(
              quarterTurns: 3,
              child: Icon(Icons.arrow_back_ios, color: Colors.grey, size: 16),
            ),
            const SizedBox(height: 5),
          ],
        )
      : Column(
          children: [
            const RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
            ),
            const RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.arrow_back_ios, color: Colors.grey, size: 16),
            ),
            Card(
              color: color,
              elevation: 15,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(icon, color: Colors.white, size: 25),
              ),
            ),
          ],
        );

  Widget _onOffText(String text, Color color) => Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.michroma(
          textStyle: TextStyle(
            fontSize: 10,
            color: Colors.transparent,
            decoration: TextDecoration.underline,
            decorationColor: color,
            decorationThickness: 2,
            shadows: const [Shadow(color: Colors.grey, offset: Offset(0, -10))],
          ),
        ),
      );
}
