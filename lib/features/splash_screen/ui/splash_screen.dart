import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopapp/core/helper/extintion.dart';
import 'package:shopapp/core/routing/routes.dart';
import 'package:shopapp/core/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    // Animation for scaling the logo
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCirc,
    );

    // Navigate to next screen after splash
    Timer(const Duration(seconds: 4), () {
      context.pushNamed(Routes.layoutScreen);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.wihteColor,
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: SizedBox(
            width: 200.w,
            height: 200.h,
            child: SvgPicture.asset(
              'assets/svg/Grabber.svg',
            ),
          ),
        ),
      ),
    );
  }
}
