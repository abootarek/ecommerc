import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/core/routing/routes.dart';
import 'package:shopapp/features/layout_screen/logic/cubit/layout_cubit.dart';
import 'package:shopapp/features/layout_screen/ui/layout_screen.dart';
import 'package:shopapp/features/auth/login/ui/login_screen.dart';
import 'package:shopapp/features/onbording/ui/onbording_screen.dart';
import 'package:shopapp/features/auth/register/ui/rej_screen.dart';
import 'package:shopapp/features/splash_screen/ui/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      // OnBoardingScreen
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => OnbordingScreen(),
        );
      // loginScreen
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      // rejScreen
      case Routes.rejScreen:
        return MaterialPageRoute(
          builder: (context) => const RejScreen(),
        );
      //HomeScreen
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      // Error Message
      default:
        return null;
    }
  }
}
