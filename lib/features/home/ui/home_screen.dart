import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/features/home/widgets/list_view_gategories.dart';
import 'package:shopapp/features/home/widgets/page_view_category.dart';
import 'package:shopapp/features/home/widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBar(),
                virticalSpace(20),
                PageViewCategory(),
                virticalSpace(20),
                const ListViewGategories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
