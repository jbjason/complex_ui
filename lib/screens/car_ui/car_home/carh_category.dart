import 'package:flutter/material.dart';
import 'package:complex_ui/screens/car_ui/car.dart';

class CarHCategory extends StatefulWidget {
  const CarHCategory({
    Key? key,
  }) : super(key: key);

  @override
  State<CarHCategory> createState() => _CarHCategoryState();
}

class _CarHCategoryState extends State<CarHCategory> {
  int _isSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned.fill(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, i) => InkWell(
                    onTap: () => setState(() => _isSelected = i),
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      alignment: Alignment.center,
                      decoration: i == _isSelected
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white)
                          : const BoxDecoration(),
                      child: Text(
                        categories[i],
                        style: TextStyle(
                          color: i == _isSelected ? greenDark : hInActiveColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(right: 0, top: 0, bottom: 0, child: _backBlueShaow()),
            ],
          ),
        ),
        _settingIcon(),
        const SizedBox(width: 7),
      ],
    );
  }

  Widget _settingIcon() => Container(
        clipBehavior: Clip.none,
        padding: const EdgeInsets.all(13),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: greenDark,
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(-2, 2),
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
        child: Image.asset(
          'assets/car/car_icon/settings1.png',
          fit: BoxFit.contain,
          color: hIconColor,
        ),
      );

  Widget _backBlueShaow() => Container(
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              spreadRadius: 15,
              blurRadius: 20,
              color: Colors.grey[200]!,
            )
          ],
        ),
      );
}
