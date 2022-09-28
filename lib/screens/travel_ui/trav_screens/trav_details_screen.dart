import 'package:complex_ui/screens/travel_ui/places.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_details/animated_detail_header.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_details/comments.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_details/description_location.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_details/realted_places.dart';
import 'package:flutter/material.dart';

class TravDetailsScreen extends StatefulWidget {
  const TravDetailsScreen({Key? key, required this.place, required this.height})
      : super(key: key);
  final Place place;
  final double height;

  @override
  State<TravDetailsScreen> createState() => _TravDetailsScreenState();
}

class _TravDetailsScreenState extends State<TravDetailsScreen> {
  late ScrollController _controller;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController(initialScrollOffset: widget.height * .3);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _controller,
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: PersistentDelegate(
                  maxExtend: widget.height,
                  minExtend: 240,
                  builder: (percent) {
                    return AnimatedDetailHeader(
                      topPercent: ((1.0 - percent) / .7).clamp(0.0, 1.0),
                      bottomPercent: (percent / .3).clamp(0.0, 1.0),
                      place: widget.place,
                    );
                  },
                ),
              ),
              const SliverToBoxAdapter(child: DescriptionAndLocation()),
              const SliverToBoxAdapter(child: RelatedPlaces()),
              const SliverToBoxAdapter(child: SizedBox(height: 150)),
            ],
          ),
          const Positioned.fill(
            top: null,
            child: CommentsAndLocation(),
          ),
        ],
      ),
    );
  }
}
