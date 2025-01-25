import 'package:flutter/material.dart';
import 'package:shopapp/core/theme/style.dart';

class ImageAndWellcom extends StatelessWidget {
  const ImageAndWellcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/splash_screen.png'),
        Text("ShopyApp", style: TextStyles.font24BlackBold),
      ],
    );
  }
}
