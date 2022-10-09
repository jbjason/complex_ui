import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarHAppbar extends StatelessWidget {
  const CarHAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            'assets/car/car_icon/menu1.png',
            fit: BoxFit.contain,
          ),
        ),
        const Spacer(),
        const Icon(CupertinoIcons.search, color: Colors.grey),
        const SizedBox(width: 20),
        const CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage('assets/car/car_icon/jb0.jpg'),
        ),
      ],
    );
  }
}
