import 'package:card_swiper/card_swiper.dart';
import 'package:glow_up/style.dart';
import 'package:flutter/material.dart';

class CustomCardSwiper extends StatelessWidget {
  final double height;
  final double width;
  final int itemCard;
  final Color? color;
  final bool useBlur;
  final bool autoSwipe;
  final Widget Function(BuildContext, int) itemBuilder;
  final void Function(int)? onIndexChanged;

  const CustomCardSwiper({
    super.key,
    required this.height,
    required this.width,
    required this.itemCard,
    this.useBlur = false,
    this.color,
    required this.autoSwipe,
    required this.itemBuilder,
    this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Swiper(
        itemCount: itemCard,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            child: Card(
              color: color ?? BC.navyGrey,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide.none,
              ),
              elevation: 0,
              child: itemBuilder(context, index),
            ),
          );
        },
        autoplay: !useBlur ? autoSwipe : false,
        autoplayDelay: 3000,
        pagination: useBlur
            ? null
            : SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  activeColor: BC.black,
                  color: BC.black.withOpacity(0.4),
                ),
              ),
        control: null,
        onIndexChanged: onIndexChanged,
        physics: useBlur ? const NeverScrollableScrollPhysics() : null,
      ),
    );
  }
}
