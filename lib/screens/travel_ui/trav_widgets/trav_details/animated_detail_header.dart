import 'dart:ui';
import 'package:complex_ui/screens/travel_ui/places.dart';
import 'package:complex_ui/screens/travel_ui/translate_animation.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_home/status_tag.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_details/likes_share_container.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_details/place_images_view.dart';
import 'package:complex_ui/screens/travel_ui/trav_widgets/trav_details/user_info_container.dart';
import 'package:flutter/material.dart';

class AnimatedDetailHeader extends StatelessWidget {
  const AnimatedDetailHeader({
    Key? key,
    required Place place,
    required this.topPercent,
    required this.bottomPercent,
  })  : _place = place,
        super(key: key);

  final Place _place;
  final double topPercent, bottomPercent;
  int _getIndex() {
    return places.indexWhere((element) => element.image == _place.image);
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Stack(
      fit: StackFit.expand,
      children: [
        Hero(
          tag: _place.image,
          child: Material(
            child: ClipRRect(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: (20 + topPadding) * (1 - bottomPercent),
                      bottom: 160 * (1 - bottomPercent),
                    ),
                    child: Transform.scale(
                      scale: lerpDouble(1.0, 1.3, bottomPercent)!,
                      child: PlaceImagesPageView(
                        initialIndex: _getIndex(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: topPadding,
                    left: -60 * (1 - bottomPercent) + 20,
                    child:
                        const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  Positioned(
                    top: topPadding,
                    right: -60 * (1 - bottomPercent) + 20,
                    child: const Icon(Icons.more_horiz, color: Colors.white),
                  ),
                  Positioned(
                    top: lerpDouble(-30, 140, topPercent)!
                        .clamp(topPadding + 10, 140),
                    left: lerpDouble(60, 20, topPercent)!.clamp(20, 50),
                    right: 20,
                    child: AnimatedOpacity(
                      opacity: bottomPercent < 1 ? 0 : 1,
                      duration: kThemeAnimationDuration,
                      child: Text(
                        _place.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: lerpDouble(20, 40, topPercent),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 200,
                    child: AnimatedOpacity(
                      opacity: bottomPercent < 1 ? 0 : 1,
                      duration: kThemeAnimationDuration,
                      child: const GradientStatusTag(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: null,
          bottom: -140 * (1.0 - topPercent),
          child: const TranslateAnimation(child: LikesAndSharesContainer()),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(color: Colors.white, height: 10),
        ),
        const Positioned.fill(
          top: null,
          child: TranslateAnimation(child: UserInfoContainer()),
        ),
      ],
    );
  }
}

class PersistentDelegate extends SliverPersistentHeaderDelegate {
  final double _maxExtend, _minExtend;
  final Widget Function(double percent) builder;

  PersistentDelegate({
    required double maxExtend,
    required double minExtend,
    required this.builder,
  })  : _maxExtend = maxExtend,
        _minExtend = minExtend;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return builder(shrinkOffset / _maxExtend);
  }

  @override
  double get maxExtent => _maxExtend;

  @override
  double get minExtent => _minExtend;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
