import 'package:flutter/material.dart';
import 'package:shopapp/core/routing/app_route.dart';
import 'package:shopapp/shop_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SharedPrefHelper.init();
  // setupGetIt();

  runApp(
    ShopApp(
      appRouter: AppRouter(),
    ),
  );
}
