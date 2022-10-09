import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';
import 'package:complex_ui/screens/car_ui/car_details/card_details_screen.dart';

class CarHListView extends StatelessWidget {
  const CarHListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cars.length,
      itemBuilder: (context, i) => Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 250,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // title ,subtitle, price & tag
            Positioned(
              left: 0,
              right: 0,
              top: 100,
              bottom: 20,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white70,
                      Colors.white38,
                      Colors.white24,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // title , price
                    Row(
                      children: [
                        Text(
                          cars[i].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: hTitleColor,
                              fontSize: 18),
                        ),
                        const Spacer(),
                        Text(
                          cars[i].price,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: hTitleColor,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // subtitle , tag
                    Row(
                      children: [
                        Text(
                          cars[i].subtitle,
                          style: const TextStyle(color: textColor),
                        ),
                        const Spacer(),
                        Text(
                          cars[i].tag,
                          style: const TextStyle(color: textColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // image
            Positioned.fill(
              top: -90,
              bottom: 50,
              child: Hero(
                  tag: '${cars[i].img[0]} car$i',
                  child: Image.asset(cars[i].img[0], fit: BoxFit.contain)),
            ),
            // details button
            Positioned(
              bottom: 0,
              left: MediaQuery.of(context).size.width / 2 - 45,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => CarDetailsScreen(car: cars[i])),
                  );
                },
                child: Container(
                  width: 90,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: greenDark,
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 5,
                        color: greenDark,
                      ),
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(3, -3),
                        color: Colors.white,
                      )
                    ],
                  ),
                  child:
                      const Icon(CupertinoIcons.arrow_right, color: hIconColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
