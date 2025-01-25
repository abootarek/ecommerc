import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/core/widgets/app_text_form_field.dart';

class FormEmailPassword extends StatefulWidget {
  const FormEmailPassword({super.key});

  @override
  State<FormEmailPassword> createState() => _FormEmailPasswordState();
}

class _FormEmailPasswordState extends State<FormEmailPassword> {
  final _formKey = GlobalKey<FormState>();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Email',
          prefixIcon: const Icon(
            Icons.email,
            size: 20,
          ),
          validator: (value) {
            if (value!.isEmpty || !value.contains('@')) {
              return 'Email is required';
            }
            return null;
          },
        ),
        virticalSpace(25),
        AppTextFormField(
          hintText: 'password',
          prefixIcon: const Icon(
            Icons.lock,
            size: 20,
          ),
          isObscureText: isObscure,
          suffixIcon: IconButton(
            icon: Icon(
              isObscure ? Icons.visibility_off : Icons.visibility,
              size: 20,
            ),
            onPressed: () {
              isObscure = !isObscure;
              setState(() {});
            },
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'password is required';
            }
            return null;
          },
        )
      ],
    );
  }
}
