import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shopapp/features/home/data/model/category_model.dart';
import 'package:shopapp/features/home/ui/widgets/item_lcaregories.dart';

class CategoriesCustom extends StatelessWidget {
  CategoriesCustom({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
      title: 'Fruits',
      image: 'assets/images/image 36.png',
    ),
    CategoryModel(
      title: 'Milk & egg',
      image: 'assets/images/image 37.png',
    ),
    CategoryModel(
      title: 'Beverages',
      image: 'assets/images/image 38.png',
    ),
    CategoryModel(
      title: 'Laundry',
      image: 'assets/images/image 39.png',
    ),
    CategoryModel(
      title: 'Vegetables',
      image: 'assets/images/image 41.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final category = categories[index];
          return ItemCategories(category: category);
        },
      ),
    );
  }
}
