import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:shopapp/core/theme/style.dart';
import 'package:shopapp/features/home/ui/widgets/banner_custom.dart';
import 'package:shopapp/features/home/ui/widgets/card_basket.dart';
import 'package:shopapp/features/home/ui/widgets/categores_custom.dart';
import 'package:shopapp/features/home/ui/widgets/products_custom.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });
  List<String> itemsBanner = [
    'assets/svg/Slider 1.png',
    'assets/svg/Slider 2.png',
    'assets/svg/Slider 3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 27.0.h),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          titleSpacing: 40,
          automaticallyImplyLeading: false,
          backgroundColor: ColorsApp.wihteColor,
          leadingWidth: 0,
          scrolledUnderElevation: 0,
          title: Row(children: [
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              '61 Hopper street..',
              style: TextStyles.font20blackLightNormal,
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: ColorsApp.black,
              size: 35,
            ),
          ]),
          actions: const [
            Icon(
              Icons.shopping_cart_rounded,
              color: ColorsApp.black,
              size: 25,
            ),
          ],
          leading: const Icon(Icons.motorcycle_outlined),
        ),
        body:
            // banner
            SingleChildScrollView(
          child: Column(
            children: [
              BannerCstom(itemsBanner: itemsBanner),
              virticalSpace(17),
              // categories
              CategoriesCustom(),
              virticalSpace(17),
              // products
              ProductsCustom(),
              virticalSpace(17),
              const CardBasket(), virticalSpace(10),
            ],
          ),
        ),
        // categories
      ),
    );
  }
}
