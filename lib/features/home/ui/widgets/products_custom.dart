import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/style.dart';
import 'package:shopapp/features/home/data/model/products_model.dart';
import 'package:shopapp/features/home/ui/widgets/item_prductes.dart';

class ProductsCustom extends StatelessWidget {
  ProductsCustom({super.key});
  List<ProductsModel> products = [
    ProductsModel(
        image: 'assets/images/banana.png',
        title: 'Banana',
        price: 3.99,
        rating: '⭐ 4.8 (287)'),
    ProductsModel(
        image: 'assets/images/falfal.png',
        title: 'Pepper',
        price: 2.99,
        rating: '⭐ 4.8 (287)'),
    ProductsModel(
        image: 'assets/images/orangeimage.jpg',
        title: 'Orange',
        price: 3.99,
        rating: '⭐ 4.8 (287)'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(
            'Products',
            style: TextStyles.font15grayLightNormal,
          ),
          const Spacer(),
          Text(
            'See all',
            style: TextStyles.font15green,
          ),
        ]),
        virticalSpace(20),
        SizedBox(
          height: 220.h,
          child: GridView.builder(
            shrinkWrap: true,
            primary: false,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            controller: ScrollController(),
            semanticChildCount: products.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.5,
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
            ),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              final product = products[index];
              return ItemProducts(product: product);
            },
          ),
        ),
      ],
    );
  }
}
