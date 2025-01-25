import 'dart:async'; // إضافة مكتبة Timer
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewCategory extends StatefulWidget {
  const PageViewCategory({super.key});

  @override
  _PageViewCategoryState createState() => _PageViewCategoryState();
}

class _PageViewCategoryState extends State<PageViewCategory> {
  late PageController pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer.cancel(); // إلغاء المؤقت عند تدمير الصفحة
    pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (pageController.page == 2) {
        pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastEaseInToSlowEaseOut,
        );
      } else {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOutExpo,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.h,
          child: PageView.builder(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Image.asset(
                'assets/images/binner.png',
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: const WormEffect(
            type: WormType.thin,
            activeDotColor: ColorsApp.grayLight,
            dotColor: ColorsApp.blackLight,
          ),
        ),
      ],
    );
  }
}
