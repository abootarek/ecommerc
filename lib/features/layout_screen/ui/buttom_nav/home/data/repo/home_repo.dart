import 'package:shopapp/core/networking/api_error_handeler.dart';
import 'package:shopapp/core/networking/api_result.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/data/apis/api_sevices.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/data/model/banner_response.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);
  Future<ApiResult<BannerResponse>> getBanner(String token) async {
    try {
      final response = await _apiService.getBanner(token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
