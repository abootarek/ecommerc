import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:shopapp/core/theme/style.dart';
import 'package:shopapp/features/home/data/model/category_model.dart';

import '../../../../core/helper/six_box.dart';

class ItemCategories extends StatelessWidget {
  const ItemCategories({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70.w,
          height: 70.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsApp.lightGrayColor,
          ),
          child: Center(
            child: Image.asset(
              category.image,
              width: 40.w,
              height: 40.h,
              fit: BoxFit.contain,
            ),
          ),
        ),
        virticalSpace(20),
        Text(
          category.title,
          style: TextStyles.font15blackLightNormal,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
