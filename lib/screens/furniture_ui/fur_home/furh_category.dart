import 'package:complex_ui/screens/furniture_ui/furniture.dart';
import 'package:flutter/material.dart';

class FurHCategory extends StatefulWidget {
  const FurHCategory({Key? key}) : super(key: key);
  @override
  State<FurHCategory> createState() => _FurHCategoryState();
}

class _FurHCategoryState extends State<FurHCategory> {
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
                        color: brownDark,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 30,
                        offset: Offset(0, -5),
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
          fit: BoxFit.contain, color: i == isSelect ? Colors.white : brownDark);
}
