import 'package:flutter/material.dart';
import 'package:complex_ui/screens/weather_ui/wt_constants.dart';

class WtrBottomList extends StatelessWidget {
  const WtrBottomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(width: 20),
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      itemCount: weathers1.length + 1,
      itemBuilder: (context, i) {
        return i == 0
            ? const SizedBox()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    weathers1[i - 1].date,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  _circularImg(i),
                  const SizedBox(height: 10),
                  Text(
                    weathers1[i - 1].temp,
                    style: const TextStyle(color: Colors.white38),
                  ),
                ],
              );
      },
    );
  }

  Widget _circularImg(int i) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: rBackThirdColor,
        border: Border.all(color: Colors.white38, width: 0.5),
        boxShadow: const [
          BoxShadow(
            color: rBackColor,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 5),
          ),
          BoxShadow(
            color: rBackThirdColor,
            blurRadius: 20,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              rListTopColor,
              rListBottomColor,
            ],
          ),
        ),
        child: Image.asset(
          weathers1[i - 1].img,
          fit: BoxFit.contain,
          color: Colors.white,
        ),
      ),
    );
  }
}
