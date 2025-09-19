import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/theme/colors.dart';

class CardBasket extends StatelessWidget {
  const CardBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: ColorsApp.gren,
      ),
      child:
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: []),
    );
  }
}
