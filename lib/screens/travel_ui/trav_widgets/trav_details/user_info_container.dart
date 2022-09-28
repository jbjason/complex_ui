import 'package:flutter/material.dart';

class UserInfoContainer extends StatelessWidget {
  const UserInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: ExactAssetImage('assets/travel/jb1.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Jb Jason',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'yesterday at 8:20 p.m',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.blue.shade600,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            child: const Text('+Follow'),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
