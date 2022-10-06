import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';
import 'package:complex_ui/screens/doc_ui/doc_clippers.dart';
import 'package:complex_ui/screens/doc_ui/common_widgets/doc_body_gridview.dart';
import 'package:complex_ui/screens/doc_ui/doc_details/doc_details_screen.dart';

class DocHWhiteBody extends StatelessWidget {
  const DocHWhiteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned.fill(
          child: ClipPath(
              clipper: DocHBodyClip(), child: Container(color: buttonColor)),
        ),
        Positioned.fill(
          top: 7,
          child: ClipPath(
            clipper: DocHBodyClip(),
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * .08, horizontal: 25),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    blueLight.withOpacity(0.5),
                    ashDark.withOpacity(0.8),
                    ashDark.withOpacity(0.7),
                  ],
                  stops: const [0.0, .15, .4],
                ),
              ),
              child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const DocDetailsScreen())),
                  child: const DocHBodyGridView(screen: 'home')),
            ),
          ),
        ),
      ],
    );
  }
}
