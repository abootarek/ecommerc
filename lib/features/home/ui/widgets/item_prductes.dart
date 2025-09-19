import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/style.dart';
import 'package:shopapp/features/home/data/model/products_model.dart';

class ItemProducts extends StatelessWidget {
  const ItemProducts({
    super.key,
    required this.product,
  });

  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 140.w,
          height: 119.h,
          decoration: const BoxDecoration(
            //color: ColorsApp.lightGrayColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Image.asset(product.image ?? 'No found ',
              height: 119.h, width: 140.w,
              errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.error,
              color: Colors.red,
            );
          }),
        ),
        virticalSpace(10),
        Text(product.title, style: TextStyles.font16blackLightMedium),
        virticalSpace(10),
        Text(
          product.price.toString(),
          style: TextStyles.font15blackLightNormal,
        ),
        virticalSpace(10),
        Text(
          product.rating,
          style: TextStyles.font16blackLightMedium,
        ),
      ],
    );
  }
}
