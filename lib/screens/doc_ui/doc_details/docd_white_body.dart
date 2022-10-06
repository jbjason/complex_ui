import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/common_widgets/doc_body_gridview.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';
import 'package:complex_ui/screens/doc_ui/doc_clippers.dart';

class DocDWhiteBody extends StatelessWidget {
  const DocDWhiteBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned.fill(
          child: ClipPath(
              clipper: DocDBodyClip(), child: Container(color: buttonColor)),
        ),
        Positioned.fill(
          bottom: 5,
          child: ClipPath(
            clipper: DocDBodyClip(),
            child: Container(
              padding: EdgeInsets.only(
                  bottom: size.height * .1, left: 25, right: 25, top: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ashDark.withOpacity(0.4),
                    ashDark.withOpacity(0.5),
                    ashDark.withOpacity(0.6),
                    blueLight.withOpacity(0.7),
                  ],
                ),
              ),
              child: const DocHBodyGridView(screen: 'det'),
            ),
          ),
        ),
      ],
    );
  }
}
