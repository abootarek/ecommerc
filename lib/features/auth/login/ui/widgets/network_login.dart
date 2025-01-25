import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/six_box.dart';

class SocialNetworkingLogin extends StatelessWidget {
  const SocialNetworkingLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          // backgroundColor: ColorsApp.transparent,
          child: Image.asset(
            'assets/images/apple.png',
          ),
        ),
        horizontalSpace(32),
        CircleAvatar(
          // backgroundColor: ColorsApp.transparent,
          child: Image.asset('assets/images/face_book.png'),
        ),
        horizontalSpace(32),
        CircleAvatar(
          // backgroundColor: ColorsApp.transparent,
          child: Image.asset('assets/images/google.png'),
        ),
      ],
    );
  }
}
