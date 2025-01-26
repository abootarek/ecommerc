import 'package:flutter/material.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:shopapp/features/auth/login/ui/login_screen.dart';
import 'dart:async';

import 'package:shopapp/features/layout_screen/ui/layout_screen.dart';
import 'package:shopapp/features/onbording/ui/onbording_screen.dart';
import 'package:shopapp/features/splash_screen/ui/widgets/shop_name_and_wellcom.dart';

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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnbordingScreen()),
      );
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
          child: const ImageAndWellcom(),
        ),
      ),
    );
  }
}
