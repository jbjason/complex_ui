import 'package:flutter/material.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_home/cart_home_screen.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartWTextAndImage extends StatelessWidget {
  const CartWTextAndImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _driveText(),
        _titleText('INNOVATION THROUGH'),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _titleText('DATE'),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _subtitleText('We deliver actionable innovation'),
                _subtitleText('Intelligence on startups.'),
              ],
            )
          ],
        ),
        const SizedBox(height: 15),
        _counter(),
        Expanded(child: _coverImage(context)),
        const SizedBox(height: 10),
        const Text('Forget the Password', style: TextStyle(color: textColor)),
      ],
    );
  }

  Widget _driveText() => const Text(
        'Drive  ',
        style: TextStyle(
            fontSize: 63,
            color: blueBack,
            fontFamily: 'TitleFont',
            fontStyle: FontStyle.italic),
      );
  Widget _titleText(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 26,
          color: textColor,
          letterSpacing: -1,
          wordSpacing: 3,
          fontWeight: FontWeight.w800,
        ),
      );
  Widget _subtitleText(String text) => Text(
        text,
        style:
            const TextStyle(fontSize: 11, letterSpacing: 1, color: textColor),
      );
  Widget _counter() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => Container(
            width: index == 0 ? 20 : 8,
            height: 8,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: index == 0 ? blueBack : whiteCardG2,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      );
  Widget _coverImage(BuildContext context) => Stack(
        children: [
          Positioned.fill(
            top: -40,
            bottom: -40,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CartHomeScreen()),
                );
              },
              child: Image.asset('assets/cartoon/cartoon_img/tango.png',
                  fit: BoxFit.contain),
            ),
          )
        ],
      );
}
