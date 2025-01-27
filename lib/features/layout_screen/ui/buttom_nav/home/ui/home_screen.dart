import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/six_box.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/ui/widgets/list_view_gategories.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/ui/widgets/page_view_category.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/ui/widgets/search_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              const SearchItem(),
              virticalSpace(20),
              const PageViewCategory(),
              virticalSpace(20),
              const ListViewGategories(),
            ],
          ),
        ),
      ),
    );
  }
}
