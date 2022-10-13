import 'package:complex_ui/screens/furniture_ui/fur_details/fur_details_screen.dart';
import 'package:complex_ui/screens/furniture_ui/furniture.dart';
import 'package:flutter/material.dart';

class FurHProducts extends StatelessWidget {
  const FurHProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: furnitures.length * 210,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: furnitures.length,
        itemBuilder: (context, i) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => FurDetailsScreen(furniture: furnitures[i])),
            );
          },
          child: Container(
            height: 150,
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.grey[100]!, Colors.grey[200]!],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Image, Title & Price
                Container(
                  height: 90,
                  margin: const EdgeInsets.only(right: 70),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(70)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500]!,
                        spreadRadius: 1,
                        blurRadius: 50,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        spreadRadius: 3,
                        blurRadius: 80,
                      )
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -50,
                        bottom: -20,
                        left: -20,
                        width: 140,
                        child: Hero(
                          tag: 'details${furnitures[i].img[0]}',
                          child: Image.asset(furnitures[i].img[0],
                              fit: BoxFit.contain),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 110,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              furnitures[i].title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              furnitures[i].price,
                              style: const TextStyle(
                                  color: brownDark,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // details & add button
                Expanded(
                  child: Container(
                    width: size.width * .7,
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            furnitures[i].details,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style:
                                const TextStyle(color: textColor, fontSize: 13),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 40,
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [orangeLight, orangeDark]),
                          ),
                          child: const Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
