import 'package:complex_ui/screens/travel_ui/places.dart';
import 'package:flutter/material.dart';

class PlaceImagesPageView extends StatefulWidget {
  const PlaceImagesPageView({Key? key, required int initialIndex})
      : _initialIndex = initialIndex,
        super(key: key);
  final int _initialIndex;

  @override
  State<PlaceImagesPageView> createState() => _PlaceImagesPageViewState();
}

class _PlaceImagesPageViewState extends State<PlaceImagesPageView> {
  late int _currentIndex;
  @override
  void initState() {
    super.initState();
    _currentIndex = widget._initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: PageController(
                viewportFraction: .9, initialPage: widget._initialIndex),
            physics: const BouncingScrollPhysics(),
            itemCount: places.length,
            onPageChanged: (value) => setState(() => _currentIndex = value),
            itemBuilder: (context, index) {
              final bool isSelected = _currentIndex == index;
              return AnimatedContainer(
                duration: kThemeAnimationDuration,
                margin: EdgeInsets.only(
                  right: 10,
                  top: isSelected ? 5 : 30,
                  bottom: isSelected ? 30 : 5,
                ),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      places[index].image,
                    ),
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                        Colors.black26, BlendMode.darken),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            7,
            (index) => Container(
              height: index == 3 ? 8 : 4,
              width: index == 3 ? 28 : 14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: index == 3 ? Colors.black87 : Colors.black12,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 5),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
