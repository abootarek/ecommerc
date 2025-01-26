import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/style.dart';

class ListViewGategories extends StatelessWidget {
  const ListViewGategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Gategories',
              style: TextStyles.font24BlackBold,
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'View all',
                style: TextStyles.font15grayLightNormal,
              ),
            ),
          ],
        ),
        virticalSpace(20),
        ///////////////////////////
        SizedBox(
          height: 100,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/binner.png',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 15.w,
              );
            },
          ),
        ),
      ],
    );
  }
}
