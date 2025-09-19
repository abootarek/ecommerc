import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/features/cart/cart_screen.dart';
import 'package:shopapp/features/category/category_screen.dart';
import 'package:shopapp/features/favorits/favoirts_screen.dart';
import 'package:shopapp/features/home/ui/home_screen.dart';
import 'package:shopapp/features/layout_screen/logic/cubit/layout_state.dart';
import 'package:shopapp/features/profile/profile_screen.dart';

class ShopCubit extends Cubit<ShopState> {
  ShopCubit() : super(ShopInitialState());
  static ShopCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screensButtom = [
    HomeScreen(),
    const CartScreen(),
    const FavoirtsScreen(),
    const CategoryScreen(),
    const ProfileScreen(),
  ];
  void changeIndex(int index) {
    currentIndex = index;
    // emit state because we need to change the index
    emit(ShopChangeBottomNavState());
  }
}
