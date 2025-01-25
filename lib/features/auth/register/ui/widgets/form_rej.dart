import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:shopapp/core/widgets/app_text_form_field.dart';
import 'package:shopapp/features/auth/register/ui/widgets/text_wellcom_rej.dart';

class Form_Register extends StatelessWidget {
  const Form_Register({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextWellcomeRejScreen(),
        virticalSpace(35),
        AppTextFormField(
          hintText: 'Name',
          prefixIcon: const Icon(
            Icons.person,
            size: 25,
            color: ColorsApp.grayLight,
          ),
        ),
        virticalSpace(20),
        AppTextFormField(
          keyboardType: TextInputType.emailAddress,
          hintText: 'Email',
          prefixIcon: const Icon(
            Icons.email,
            size: 25,
            color: ColorsApp.grayLight,
          ),
        ),
        virticalSpace(20),
        AppTextFormField(
          keyboardType: TextInputType.visiblePassword,
          hintText: 'Passwprd',
          prefixIcon: const Icon(
            Icons.lock,
            size: 25,
            color: ColorsApp.grayLight,
          ),
        ),
        virticalSpace(20),
        AppTextFormField(
          keyboardType: TextInputType.phone,
          hintText: 'Phone',
          prefixIcon: const Icon(
            Icons.phone,
            size: 25,
            color: ColorsApp.grayLight,
          ),
        ),
        virticalSpace(20),
      ],
    );
  }
}
