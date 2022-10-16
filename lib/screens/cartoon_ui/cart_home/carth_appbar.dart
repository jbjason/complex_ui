import 'package:flutter/material.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartHAppbar extends StatelessWidget {
  const CartHAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Hey Jb Jason ..!',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.bold)),
              Text('Find you correct status.',
                  style: TextStyle(color: textColor, fontSize: 18)),
            ],
          ),
          const Spacer(),
          _iconContainer('assets/cartoon/cartoon_icon/bing.png'),
          const SizedBox(width: 10),
          _iconContainer('assets/cartoon/cartoon_icon/settings.png'),
        ],
      ),
    );
  }

  Widget _iconContainer(String img) => Container(
        width: 50,
        padding: const EdgeInsets.all(1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blueBack, whiteCardG1],
              stops: [0.0, 0.7]),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [whiteItemG1, whiteCardG1],
            ),
          ),
          child: Image.asset(img, fit: BoxFit.contain, color: blueBack),
        ),
      );
}
