import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/core/theme/colors.dart';
import 'package:shopapp/features/layout_screen/logic/cubit/layout_cubit.dart';
import 'package:shopapp/features/layout_screen/logic/cubit/layout_state.dart';

class LayoutScreens extends StatelessWidget {
  const LayoutScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ShopCubit>(context);
    return BlocConsumer<ShopCubit, ShopState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: cubit.screensButtom[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorsApp.blackLight,
            unselectedItemColor: ColorsApp.grayLight,
            // showUnselectedLabels: false,
            currentIndex: cubit.currentIndex,
            onTap: cubit.changeIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
