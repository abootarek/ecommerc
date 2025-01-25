import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/extintion.dart';
import 'package:shopapp/core/routing/routes.dart';
import 'package:shopapp/core/theme/style.dart';

class SocialAndButtonLogin extends StatelessWidget {
  const SocialAndButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Haven an account?',
              style: TextStyles.font15grayLightNormal,
            ),
            TextButton(



              
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: Text(
                'Login',
                style: TextStyles.font15blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
