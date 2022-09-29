import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:complex_ui/screens/furniture_ui/furniture.dart';

class FurDetailsScreen extends StatelessWidget {
  const FurDetailsScreen({Key? key, required this.furniture}) : super(key: key);
  final Furniture furniture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brownDark,
      body: Stack(
        children: [
          // images & white Shadow
          FurDetImages(images: furniture.img),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 15),
                  FarDetAppBar(title: furniture.title),
                  // body Attributes
                  const FurDetAttributes(),
                  Expanded(child: FurDetailsBody(furniture: furniture)),
                ],
              ),
            ),
          ),
          // bottom stand black Shadow
          const FurDetStandBlackShadow(),
        ],
      ),
    );
  }
}

class FurDetStandBlackShadow extends StatelessWidget {
  const FurDetStandBlackShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * .43,
      right: -20,
      width: size.width * .55,
      height: size.height * .4,
      child: Center(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..rotateX(-90 * 180 / math.pi)
            ..setEntry(3, 2, .002),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 3,
                  blurRadius: 80,
                ),
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 3,
                  blurRadius: 80,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FurDetImages extends StatelessWidget {
  const FurDetImages({Key? key, required this.images}) : super(key: key);
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final currentImg = ValueNotifier<int>(0);
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        // angle Color containers
        Positioned(
          top: -100,
          height: size.height + 200,
          child: Transform.rotate(
            angle: -20 * 180 / math.pi,
            child: Row(
              children: [
                Container(width: 50, color: Colors.white12),
                Container(width: 55, color: Colors.white30),
                Container(width: 60, color: brownLight),
                Container(width: 65, color: orangeLight),
              ],
            ),
          ),
        ),
        // white shadow
        Positioned(
            top: 0,
            left: size.width * .2,
            width: size.width * .8,
            height: size.height * .7,
            child: _whiteShadow()),

        // image
        Positioned(
          top: 40,
          height: size.height * .6,
          width: size.width,
          right: -100,
          child: PageView.builder(
            onPageChanged: (value) => currentImg.value = value,
            itemCount: images.length,
            itemBuilder: (context, i) => Hero(
              tag: 'details${images[0]}',
              child: Image.asset(images[i], fit: BoxFit.fitHeight),
            ),
          ),
        ),
        // counter Container
        Positioned(
          top: size.height * .55,
          left: size.width * .47,
          child: SizedBox(
            height: 10,
            child: Row(
              children: List.generate(
                images.length,
                (index) => ValueListenableBuilder(
                  valueListenable: currentImg,
                  builder: (context, val, _) => Container(
                    height: 7,
                    width: index != val ? 11 : 40,
                    margin: const EdgeInsets.only(right: 7),
                    decoration: BoxDecoration(
                      color: index != val ? Colors.white60 : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _whiteShadow() => Center(
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white24,
                spreadRadius: 3,
                blurRadius: 30,
              ),
              BoxShadow(
                color: Colors.white12,
                spreadRadius: 3,
                blurRadius: 80,
              ),
              BoxShadow(
                color: Colors.white10,
                spreadRadius: 3,
                blurRadius: 80,
              )
            ],
          ),
        ),
      );
}

class FurDetailsBody extends StatelessWidget {
  const FurDetailsBody({Key? key, required this.furniture}) : super(key: key);
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
          FavDetColors(colors: furniture.colors),
          const SizedBox(height: 30),
          // Title & Quantity counter
          FavDetTitleCounter(title: furniture.title),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    furniture.price,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Total Payble',
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
              Container(
                clipBehavior: Clip.none,
                width: 160,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
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
          )
        ],
      ),
    );
  }
}

class FavDetTitleCounter extends StatelessWidget {
  const FavDetTitleCounter({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 26,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w900,
              wordSpacing: 1.6),
        ),
        Container(
          width: 100,
          height: 40,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.remove, color: brownDark),
              SizedBox(width: 5),
              Text('01', style: TextStyle(color: brownDark)),
              SizedBox(width: 5),
              Icon(Icons.add, color: brownDark),
            ],
          ),
        ),
      ],
    );
  }
}

class FavDetColors extends StatelessWidget {
  const FavDetColors({Key? key, required this.colors}) : super(key: key);
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        colors.length,
        (i) => CircleAvatar(
          radius: 20,
          backgroundColor: i == 0 ? colors[i] : Colors.transparent,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: i == 0 ? Colors.white : Colors.transparent,
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colors[i],
                boxShadow: [
                  BoxShadow(
                    color: colors[i],
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
            ),
          ),
        ),
      ),
    );
  }
}

class FarDetAppBar extends StatelessWidget {
  const FarDetAppBar({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: _appBarIcon(Icons.arrow_back_ios_new_sharp),
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          _appBarIcon(Icons.more_vert_sharp),
        ],
      ),
    );
  }

  Widget _appBarIcon(IconData icon) => Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Icon(icon, color: brownDark),
      );
}

class FurDetAttributes extends StatelessWidget {
  const FurDetAttributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .5,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _furAttribute(Icons.light_sharp, '22W'),
          const SizedBox(height: 15),
          _furAttribute(Icons.height_sharp, '28 cm'),
          const SizedBox(height: 15),
          _furAttribute(Icons.width_wide, '26 cm'),
          const SizedBox(height: 15),
          _furAttribute(Icons.power, '1.8 cm'),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _furAttribute(IconData icon, String text) => Container(
        padding: const EdgeInsets.all(15),
        width: 80,
        decoration: BoxDecoration(
            color: Colors.white12, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            )
          ],
        ),
      );
}
