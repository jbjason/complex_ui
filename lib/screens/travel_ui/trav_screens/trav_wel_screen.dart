import 'package:complex_ui/screens/travel_ui/trav_screens/trav_home_screen.dart';
import 'package:flutter/material.dart';

class TravWelScreen extends StatelessWidget {
  const TravWelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/travel/cover1.jpg')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // counter Container
            SizedBox(
              height: 10,
              child: Row(
                children: List.generate(
                  4,
                  (index) => Container(
                    height: 7,
                    width: index != 1 ? 11 : 40,
                    margin: const EdgeInsets.only(right: 7),
                    decoration: BoxDecoration(
                      color: index != 1 ? Colors.white60 : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Discover Bali',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.white)),
            const Text(
                'The mere mention of Bali evokes thoughts of a paradise.',
                style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 50),
            // profile pics Container
            Container(
              height: 80,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: List.generate(
                  5,
                  (index) => index != 4
                      ? Container(
                          width: 50,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/travel/jb$index.jpg'),
                                fit: BoxFit.cover),
                          ),
                        )
                      : Container(
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange.shade300),
                          child: const Center(child: Text('+35')),
                        ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            // bottom Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade300),
                ),
                IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const TravHomeScreen())),
                    icon: Icon(Icons.arrow_right_alt,
                        color: Colors.orange.shade300, size: 40))
              ],
            )
          ],
        ),
      ),
    );
  }
}
