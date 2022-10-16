import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_clipper.dart';
import 'package:complex_ui/screens/cartoon_ui/cart_welcome/cartw_text_and_image.dart';
import 'package:complex_ui/screens/cartoon_ui/cartoon.dart';

class CartWelcomeScreen extends StatelessWidget {
  const CartWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: blueBack,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blueBack,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: ClipPath(
                clipper: CartWClipper(),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: blueBack),
                    borderRadius: BorderRadius.circular(35),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [whiteWelG1, whiteWelG2, whiteWelG3],
                    ),
                  ),
                  // Text &  Image
                  child: const CartWTextAndImage(),
                ),
              ),
            ),
            Positioned(
                top: size.height * .71, left: 8, child: swipeText('Skip↠')),
            Positioned(
                top: size.height * .71, right: 8, child: swipeText('↞Login')),
          ],
        ),
      ),
    );
  }

  Widget swipeText(String s) => Text(
        s,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 11, color: textColor, fontWeight: FontWeight.w700),
      );
}
