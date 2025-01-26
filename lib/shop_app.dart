import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/routing/app_route.dart';
import 'package:shopapp/core/routing/routes.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:shopapp/features/layout_screen/logic/cubit/layout_cubit.dart';

class ShopApp extends StatelessWidget {
  final AppRouter appRouter;

  const ShopApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ShopCubit()),
          ],
          child: MaterialApp(
            title: 'Shop App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: ColorsApp.wihteColor),
            onGenerateRoute: appRouter.generateRoute,
            initialRoute: Routes.splashScreen,
          ),
        );
      },
    );
  }
}
