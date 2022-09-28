import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikesAndSharesContainer extends StatelessWidget {
  const LikesAndSharesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.black,
              shape: const StadiumBorder(),
            ),
            icon: const Icon(CupertinoIcons.heart, size: 26),
            label: const Text('800'),
          ),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.black,
              shape: const StadiumBorder(),
            ),
            icon: const Icon(CupertinoIcons.reply, size: 26),
            label: const Text('230'),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue.shade100,
              primary: Colors.blue.shade600,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            icon: const Icon(Icons.check_circle_outline, size: 26),
            label: const Text('Checkin'),
          ),
        ],
      ),
    );
  }
}