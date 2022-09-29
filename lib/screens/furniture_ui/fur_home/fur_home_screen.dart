import 'package:flutter/material.dart';
import 'package:complex_ui/screens/furniture_ui/fur_details/fur_details_screen.dart';
import 'package:complex_ui/screens/furniture_ui/fur_home/fur_navbar.dart';
import 'package:complex_ui/screens/furniture_ui/furniture.dart';

class FurHomeScreen extends StatelessWidget {
  const FurHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              // Appbar ,Title & Subtile
              FurAppBarTitle(),
              SizedBox(height: 3),
              FurHomeCategory(),
              SizedBox(height: 10),
              FurHomeProducts(),
            ],
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FurFloatingButton(),
      bottomNavigationBar: const FurNavBar(),
    );
  }
}

class FurFloatingButton extends StatelessWidget {
  const FurFloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: brownDark,
      child: Image.asset(
        'assets/furniture/fur_icon/cart.png',
        color: Colors.white,
        height: 50,
        width: 30,
        fit: BoxFit.contain,
      ),
    );
  }
}

class FurHomeProducts extends StatelessWidget {
  const FurHomeProducts({Key? key}) : super(key: key);

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
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                    color: Colors.white,
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

class FurHomeCategory extends StatefulWidget {
  const FurHomeCategory({Key? key}) : super(key: key);
  @override
  State<FurHomeCategory> createState() => _FurHomeCategoryState();
}

class _FurHomeCategoryState extends State<FurHomeCategory> {
  int isSelect = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.only(left: 20),
        itemCount: 7,
        itemBuilder: (context, i) => InkWell(
          onTap: () => setState(() => isSelect = i),
          child: isSelect == i
              ? Container(
                  width: 75,
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: brownLight,
                        spreadRadius: 2,
                        blurRadius: 80,
                        offset: Offset(-5, -5),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 4,
                        blurRadius: 80,
                        offset: Offset(-5, -5),
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [brownLight, brownDark],
                    ),
                  ),
                  child: _currentWidget(i),
                )
              : UnconstrainedBox(
                  child: Container(
                    height: 55,
                    width: 65,
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.grey[100]!, Colors.grey[50]!],
                      ),
                    ),
                    child: _currentWidget(i),
                  ),
                ),
        ),
      ),
    );
  }

  Widget _currentWidget(int i) => i == 0
      ? Center(
          child: Text(
            'All Product',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: i == isSelect ? 13 : 10,
              color: i == isSelect ? Colors.white : brownDark,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      : Image.asset('assets/furniture/fur_icon/icon$i.png',
          fit: BoxFit.contain, color: brownDark);
}

class FurAppBarTitle extends StatelessWidget {
  const FurAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar
          SizedBox(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Menu Button
                Image.asset(
                  'assets/furniture/fur_icon/menu.png',
                  width: 35,
                  fit: BoxFit.contain,
                ),
                // Search Button
                Container(
                  clipBehavior: Clip.none,
                  width: 180,
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
                          child: const Icon(Icons.search, color: Colors.white)),
                      const SizedBox(width: 6),
                      const Text(
                        'Search products',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // Title
          const Text(
            'Unique Style',
            style: TextStyle(
                fontSize: 26,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w900,
                wordSpacing: 1.6),
          ),
          const Text(
            'Home Product',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.5,
                wordSpacing: 1.6),
          ),
          const SizedBox(height: 7),
          // Subtitle
          const Text(
            'Customized your favorite product',
            style:
                TextStyle(fontSize: 13, letterSpacing: 1.5, color: textColor),
          ),
        ],
      ),
    );
  }
}
