import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/style.dart';

class TextDividerLogin extends StatelessWidget {
  const TextDividerLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
        horizontalSpace(5),
        Text(
          'Or sign in with',
          style: TextStyles.font15grayLightNormal,
        ),
        horizontalSpace(5),
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
