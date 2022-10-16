import 'package:flutter/material.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_clipper.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartHFollowerDetails extends StatelessWidget {
  const CartHFollowerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final followerPercent = (cartoonUser[6].number / 2000);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _followersText('${cartoonUser[6].number} ', ''),
        SizedBox(
          height: 85,
          width: 85,
          child: CustomPaint(
            painter: CartCircularprogress(
              backColor: blueBack.withOpacity(.2),
              frontColor: blueBack,
              strokeWidth: 13,
              value: followerPercent,
            ),
            child: Center(
              child: Text(
                '+${(followerPercent * 100).toStringAsFixed(0)}%',
                style: const TextStyle(
                    color: textColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        _followersText('2000 ', 'Non-')
      ],
    );
  }

  Widget _followersText(String text, String subText) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 8,
                width: 8,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: subText != '' ? blueBack.withOpacity(.2) : blueBack,
                ),
              ),
            ],
          ),
          Text(
            '$subText Follower\'s',
            style: const TextStyle(color: textColor, fontSize: 11),
          ),
        ],
      );
}
