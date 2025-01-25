import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/style.dart';
import 'package:shopapp/core/widgets/app_text_button.dart';
import 'package:shopapp/features/auth/register/ui/widgets/form_rej.dart';
import 'package:shopapp/features/auth/register/ui/widgets/social_and_button_login.dart';

class RejScreen extends StatelessWidget {
  const RejScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 55.h, horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Form_Register(),
                virticalSpace(30),
                AppTextButton(
                  buttonText: 'Register',
                  textStyle: TextStyles.font18WihtBold,
                  onPressed: () {},
                ),
                virticalSpace(30),
                const SocialAndButtonLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
