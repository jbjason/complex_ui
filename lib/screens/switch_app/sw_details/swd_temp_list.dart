import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwdTempList extends StatefulWidget {
  const SwdTempList({Key? key}) : super(key: key);
  @override
  State<SwdTempList> createState() => _SwdTempListState();
}

class _SwdTempListState extends State<SwdTempList> {
  final _controller = PageController(viewportFraction: .21);
  double _val = 0.0;
  @override
  void initState() {
    _controller.addListener(_listener);
    super.initState();
  }

  void _listener() => setState(() => _val = _controller.page!);

  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      itemCount: 10,
      padEnds: true,
      onPageChanged: (int page) => setState(() => _currentPage = page),
      itemBuilder: (context, index) {
        final _isSelecte = index == _currentPage;
        final percent = index - _val;
        final _scale = percent.abs() * .3;
        // degree icon for selected Number
        final text2 = _isSelecte ? '${index + 21}\u2103' : '${index + 21}';
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..scale(1 - _scale),
          child: Text(
            text2,
            textAlign: TextAlign.center,
            style: GoogleFonts.michroma(
              textStyle: TextStyle(
                fontSize: _isSelecte ? 26 : 18,
                color: _isSelecte
                    ? const Color.fromARGB(255, 214, 187, 107)
                    : const Color(0xFF757575),
                fontWeight: _isSelecte ? FontWeight.w900 : FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }
}
