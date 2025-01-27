import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/data/repo/home_repo.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._homeRepo,
  ) : super(const HomeState.initial());
  final HomeRepo _homeRepo;
  void getBanner(String token) async {
    emit(const HomeState.bannerLoading());
    final response = await _homeRepo.getBanner(token);
    response.when(
      success: (data) {
        emit(HomeState.bannerSuccess(data));
      },
      failure: (errorHandler) {
        emit(
          HomeState.bannerLrror(errorHandler.apiErrorModel),
        );
        print('Errrrrorrrr');
      },
    );
  }
}
