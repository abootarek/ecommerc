// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shopapp/core/networking/api_constants.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/data/apis/home_api_constantes.dart';
import 'package:shopapp/features/layout_screen/ui/buttom_nav/home/data/model/banner_response.dart';
part 'api_sevices.g.dart';

@RestApi(baseUrl: ConstansApi.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(HomeApiConstantes.banner)
  Future<BannerResponse> getBanner(
    @Header('Authorization') String token,
  );
}
