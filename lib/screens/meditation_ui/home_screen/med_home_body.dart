import 'package:flutter/material.dart';
import 'package:complex_ui/screens/meditation_ui/home_screen/home_body_clipper.dart';
import 'package:complex_ui/screens/meditation_ui/home_screen/med_home_body1.dart';

class MedHomeBody extends StatelessWidget {
  const MedHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * .55,
            width: size.width,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // blur shadow
                Positioned(
                  bottom: 0,
                  left: size.width * .2,
                  child: _backBlueShaow(size),
                ),
                // back white Container
                Positioned.fill(
                  child: ClipPath(
                    clipper: HomeBodyClipper(),
                    child: Container(color: Colors.white, width: size.width),
                  ),
                ),
                // back image Container
                SizedBox(
                  height: size.height * .55 - 5,
                  child: ClipPath(
                    clipper: HomeBodyClipper(),
                    child: Image.asset('assets/meditation/night.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                // profile pic
                Positioned(bottom: 20, left: 0, right: 0, child: _profilePic()),
                // Back & Share Icon
                Positioned(
                    top: 40,
                    left: 15,
                    right: 15,
                    child: _appbarButtons(context)),
              ],
            ),
          ),
          const MedHomeBody1(),
        ],
      ),
    );
  }

  Widget _appbarButtons(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.grey)),
          const Icon(Icons.share, color: Colors.grey),
        ],
      );
  Widget _profilePic() => Center(
        child: Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/meditation/jb.jpg'),
            ),
          ),
        ),
      );
  Widget _backBlueShaow(Size size) => Container(
        width: size.width * .6,
        height: size.height * .3,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              spreadRadius: 20,
              blurRadius: 100,
              color: Colors.blueGrey.shade700,
            )
          ],
        ),
      );
}
