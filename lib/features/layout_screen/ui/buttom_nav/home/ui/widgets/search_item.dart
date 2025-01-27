import 'package:flutter/material.dart';
import 'package:shopapp/core/widgets/app_text_form_field.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      
      hintText: 'Search',
      suffixIcon: const Icon(
        size: 20,
        Icons.cancel_rounded,
        color: Colors.grey,
      ),
      prefixIcon: const Icon(
        size: 20,
        Icons.search,
        color: Colors.grey,
      ),
    );
  }
}
