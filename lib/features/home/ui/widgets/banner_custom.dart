import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerCstom extends StatelessWidget {
  const BannerCstom({
    super.key,
    required this.itemsBanner,
  });

  final List<String> itemsBanner;

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
    CarouselSlider.builder(
      itemCount: itemsBanner.length,
      itemBuilder: (context, index, realIndex) {
        return Image.asset(itemsBanner[index],
            fit: BoxFit.cover, width: 383, height: 222);
      },
      options: CarouselOptions(
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInSine,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    )
              ],
            );
  }
}
