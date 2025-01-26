// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/helper/extintion.dart';
import 'package:shopapp/core/routing/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:shopapp/features/onbording/data/model/model_onbording.dart';

class Dec_Page_View extends StatelessWidget {
  const Dec_Page_View({
    super.key,
    required this.model,
    required this.pageController,
  });
  final PageController pageController;
  final ModelOnbording model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          model.image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/Group.png',
                  height: 60,
                ),
                const SizedBox(height: 16),
                Text(
                  model.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Text(
                    model.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: ColorsApp.grayLight,
                    activeDotColor: ColorsApp.blackLight,
                    dotHeight: 7,
                    dotWidth: 15,
                  ),
                ),
                virticalSpace(16),
                GestureDetector(
                  onTap: () {
                    if (pageController.page! < 2) {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                    } else {
                      context.pushReplacementNamed(Routes.loginScreen);
                    }
                  },
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: ColorsApp.blackLight,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: ColorsApp.wihteColor,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
