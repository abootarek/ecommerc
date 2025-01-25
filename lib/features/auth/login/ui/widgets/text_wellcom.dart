import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/style.dart';

class TextWellcom extends StatelessWidget {
  const TextWellcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Back to your digital life',
          textAlign: TextAlign.center,
          style: TextStyles.font24BlackBold,
        ),
        virticalSpace(10),
        Text(
          'Choose one of the option to go',
          textAlign: TextAlign.center,
          style: TextStyles.font15grayLightNormal,
        ),
      ],
    );
  }
}
