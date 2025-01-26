import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/features/layout_screen/logic/cubit/layout_state.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/cateogries/cateogrise.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/favories/favories_screen.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/home_screen.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/productes/product_screen.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/settinges/settinges.dart';

class ShopCubit extends Cubit<ShopState> {
  ShopCubit() : super(ShopInitialState());
  static ShopCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screensButtom = [
    const HomeScreen(),
    const ProductScreen(),
    const FavoriesScreen(),
    const CateogriseScreen(),
    const SettingesScreen(),
  ];
  void changeIndex(int index) {
    currentIndex = index;
    // emit state because we need to change the index
    emit(ShopChangeBottomNavState());
  }
}
