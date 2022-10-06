import 'package:flutter/material.dart';
import 'package:complex_ui/screens/doc_ui/doc.dart';

class DocHBodyGridView extends StatelessWidget {
  const DocHBodyGridView({Key? key, required this.screen}) : super(key: key);
  final String screen;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
      ),
      itemCount: myDocs.length,
      itemBuilder: (context, i) {
        final index = screen == 'det' ? myDocs.length - i - 1 : i;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(.5),
                      Colors.white.withOpacity(.3),
                    ],
                  ),
                ),
                child: Image.asset(myDocs[index].img, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              myDocs[index].title,
              style: const TextStyle(
                  fontSize: 13, fontWeight: FontWeight.w400, color: blueDark),
            ),
            Text(
              myDocs[index].subTitle,
              style: const TextStyle(color: buttonColor2, fontSize: 11),
            )
          ],
        );
      },
    );
  }
}
