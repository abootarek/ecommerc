import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/extintion.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/routing/routes.dart';
import 'package:shopapp/core/theme/style.dart';
import 'package:shopapp/features/auth/login/ui/widgets/network_login.dart';
import 'package:shopapp/features/auth/login/ui/widgets/text_and_devider.dart';

class SocialAndButtonRej extends StatelessWidget {
  const SocialAndButtonRej({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Forget Password?',
            style: TextStyles.font15blue,
          ),
        ),
        virticalSpace(20),
        const TextDividerLogin(),
        virticalSpace(25),
        const SocialNetworkingLogin(),
        virticalSpace(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Haven’t an account?',
              style: TextStyles.font15grayLightNormal,
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(Routes.rejScreen);
              },
              child: Text(
                'Register',
                style: TextStyles.font15blue,
              ),
            ),
          ],
        )
      ],
    );
  }
}
