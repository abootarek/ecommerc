import 'package:flutter/material.dart';
import 'package:shopapp/core/routing/app_route.dart';
import 'package:shopapp/shop_app.dart';

void main() {
  runApp(
    ShopApp(
      appRouter: AppRouter(),
    ),
  );
}
