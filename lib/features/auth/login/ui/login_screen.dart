import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/helper/extintion.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/routing/routes.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:shopapp/core/theme/style.dart';
import 'package:shopapp/core/widgets/app_text_button.dart';
import 'package:shopapp/features/auth/login/ui/widgets/form_email_password.dart';
import 'package:shopapp/features/auth/login/ui/widgets/social_and_rej.dart';
import 'package:shopapp/features/auth/login/ui/widgets/text_wellcom.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 80.0.h, horizontal: 25.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWellcom(),
                virticalSpace(50),
                const FormEmailPassword(),
                virticalSpace(35),
                AppTextButton(
                  buttonHeight: 55.h,
                  buttonWidth: 300.w,
                  buttonText: 'Login',
                  backgroundColor: ColorsApp.blackLight,
                  textStyle: TextStyles.font18WihtBold,
                  onPressed: () {
                    context.pushNamed(Routes.layoutScreen);
                  },
                ),
                virticalSpace(18),
                const SocialAndButtonRej(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
