import 'package:flutter/material.dart';

class MedHomeBody1 extends StatelessWidget {
  const MedHomeBody1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        const Text('by Jb Jason', style: TextStyle(color: Colors.grey)),
        const SizedBox(height: 20),
        Container(
          height: 3,
          width: 130,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.grey[200]!,
              Colors.grey,
              Colors.grey,
              Colors.grey[200]!,
            ],
          )),
        ),
        const SizedBox(height: 20),
        _listTile('You\'re Somebody Else', '2.04', true),
        _listTile('Let Her Go', '1.56', false),
        _listTile('In My Veins', '3.12', false),
        _listTile('Every Breath u Take', '5.00', false),
        _listTile('Change of Wind', '4.12', false),
        _listTile('In My Veins', '3.12', false),
        _listTile('Every Breath u Take', '5.00', false),
        _listTile('Change of Wind', '4.12', false),
      ],
    );
  }

  Widget _listTile(String title, String subtitle, bool isSelect) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: ListTile(
          leading: Icon(isSelect ? Icons.play_arrow : Icons.lock,
              color: Colors.grey),
          title: Text(
            title,
            overflow: TextOverflow.fade,
            style: TextStyle(
                color: isSelect ? Colors.black : Colors.grey,
                fontWeight: isSelect ? FontWeight.w700 : FontWeight.normal),
          ),
          trailing: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      );
}
