import 'package:complex_ui/screens/travel_ui/places.dart';
import 'package:complex_ui/screens/travel_ui/trav_screens/trav_details_screen.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_home/place_card.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_home/trav_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravHomeScreen extends StatelessWidget {
  const TravHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Jb Jason', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.search,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.star,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemExtent: 350,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20, 0, 20, kToolbarHeight),
        itemBuilder: (context, index) {
          return Hero(
            tag: places[index].image,
            child: Material(
              child: PlaceCard(
                places: places[index],
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, animation, __) {
                        return FadeTransition(
                          opacity: animation,
                          child: TravDetailsScreen(
                            place: places[index],
                            height: MediaQuery.of(context).size.height,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.location_on),
      ),
      bottomNavigationBar: const TravNavBar(),
    );
  }
}
