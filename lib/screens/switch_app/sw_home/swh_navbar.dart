import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:complex_ui/screens/switch_app/sw_clipper/swh_nav_painter.dart';

class SwhNavBar extends StatelessWidget {
  const SwhNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // NavBar
        const Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          left: 0,
          child: CustomPaint(
            painter: SwhNavPainter(
              colors: [Color(0xFF424242), Color(0xFF424242)],
            ),
          ),
        ),
        Positioned(
          top: 5,
          bottom: 0,
          right: 0,
          left: 0,
          child: CustomPaint(
            painter: const SwhNavPainter(
              colors: [Color(0xFF272B38), Color(0xFF393F4B)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _navItem(Icons.bar_chart, 'Statistics'),
                _navItemMiddle(),
                _navItem(Icons.watch_later_outlined, 'Schedule'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _navItemMiddle() => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '36',
              style: GoogleFonts.michroma(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const TextSpan(
              text: '%',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ])),
          const SizedBox(height: 10),
          Text(
            'Brightness',
            style: GoogleFonts.michroma(
                textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
          ),
          const SizedBox(height: 15),
        ],
      );
  Widget _navItem(IconData icon, String title) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(width: 2, color: Colors.white54),
            ),
            child: Icon(icon, size: 15, color: Colors.white54),
          ),
          const SizedBox(height: 3),
          Text(
            title,
            style: GoogleFonts.michroma(
                textStyle: const TextStyle(fontSize: 8, color: Colors.grey)),
          ),
          const SizedBox(height: 8),
        ],
      );
}
