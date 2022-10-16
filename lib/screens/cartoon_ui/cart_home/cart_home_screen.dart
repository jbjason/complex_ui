import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_home/carth_appbar.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_home/carth_body_bottom.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_home/carth_body_middle.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_home/carth_nav_bar.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_home/carth_page_item.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartHomeScreen extends StatelessWidget {
  const CartHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: blueBack,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteCardG1,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: size.height * .48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CartHAppbar(),
                  SizedBox(height: 10),
                  Expanded(child: CartHPageItem()),
                ],
              ),
            ),
            Positioned(
              top: size.height * .46,
              left: 0,
              right: 0,
              height: size.height * .2,
              child: const CartHBodyMiddle(),
            ),
            Positioned(
              top: size.height * .61,
              left: 0,
              right: 0,
              height: size.height * .37,
              child: const CartHBodyBottom(),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const CartHNavBar(),
    );
  }
}
