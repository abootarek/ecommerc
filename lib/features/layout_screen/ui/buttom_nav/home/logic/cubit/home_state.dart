import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopapp/core/networking/api_error_model.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/data/model/banner_response.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.bannerLoading() = BannerLoading;
  const factory HomeState.bannerSuccess(
      // add model
      BannerResponse bannerResponse) = BannerSuccess;
  const factory HomeState.bannerLrror(ApiErrorModel error) = BannerError;
}
