import 'package:complex_ui/screens/furniture_ui/fur_details/furd_body_title_counter.dart';
import 'package:complex_ui/screens/furniture_ui/fur_details/furd_colors.dart';
import 'package:complex_ui/screens/furniture_ui/furniture.dart';
import 'package:flutter/material.dart';

class FurDBody extends StatelessWidget {
  const FurDBody({Key? key, required this.furniture}) : super(key: key);
  final Furniture furniture;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // colors
          FurDColors(colors: furniture.colors),
          const SizedBox(height: 30),
          // Title & Quantity counter
          FurDBodyTitleCounter(title: furniture.title),
          const SizedBox(height: 20),
          // details
          Text(
            furniture.details,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: textColor),
          ),
          const Spacer(),
          // Price & Cart button
          _priceAndCartButton()
        ],
      ),
    );
  }

  Widget _priceAndCartButton() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  furniture.price,
                  style: const TextStyle(color: brownDark, fontSize: 26),
                ),
                const Text(
                  'Total Payble',
                  style: TextStyle(color: textColor),
                ),
              ],
            ),
          ),
          Container(
            clipBehavior: Clip.none,
            width: 160,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: orangeDark,
              boxShadow: const [
                BoxShadow(
                  color: orangeDark,
                  spreadRadius: 1,
                  blurRadius: 30,
                ),
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 3,
                  blurRadius: 80,
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white24),
                    child: const Icon(Icons.shopping_cart_outlined,
                        color: Colors.white)),
                const SizedBox(width: 6),
                const Text(
                  'Add to Cart',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ],
      );
}
