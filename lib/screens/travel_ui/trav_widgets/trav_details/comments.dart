import 'package:flutter/material.dart';

class CommentsAndLocation extends StatelessWidget {
  const CommentsAndLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white.withOpacity(0), Colors.white],
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade800,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Align(
                    widthFactor: .7,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage:
                            ExactAssetImage('assets/travel/jb$i.jpg'),
                      ),
                    ),
                  ),
                const SizedBox(width: 10),
                const Text(
                  'Comments',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                const Text(
                  '120',
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.location_on, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
