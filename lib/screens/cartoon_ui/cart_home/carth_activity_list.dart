import 'package:flutter/material.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartHActivityList extends StatelessWidget {
  const CartHActivityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cartoonUser.length,
      clipBehavior: Clip.none,
      itemBuilder: (context, i) {
        final index = cartoonUser.length - i - 1;
        return Container(
          width: 150,
          padding: const EdgeInsets.all(1),
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [blueBack, whiteCardG1],
                stops: [0.0, 0.7]),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [whiteItemG1, whiteCardG1],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cartoonUser[index].title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: textColor, fontSize: 11),
                ),
                const SizedBox(width: 8),
                Text(
                  cartoonUser[index].number.toString(),
                  style: const TextStyle(
                      color: textColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
