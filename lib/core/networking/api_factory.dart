// import 'package:dio/dio.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// class DioFactory {
//   /// private constructor as I don't want to allow creating an instance of this class
//   DioFactory._();

//   static Dio? dio;

//   static Dio getDio() {
//     Duration timeOut = const Duration(seconds: 30);

//     if (dio == null) {
//       dio = Dio();
//       dio!
//         ..options.connectTimeout = timeOut
//         ..options.receiveTimeout = timeOut;
//       addDioHeaders();
//       addDioInterceptor();
//       return dio!;
//     } else {
//       return dio!;
//     }
//   }

//   static void addDioHeaders() async {
//     dio?.options.headers = {
//       'Accept': 'application/json',
//       'Authorization':
//           'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzMzNjExNzM4LCJleHAiOjE3MzM2OTgxMzgsIm5iZiI6MTczMzYxMTczOCwianRpIjoialVzVWxpT255Sk1WTGZOZyIsInN1YiI6IjI1OTYiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.st19hty3jUbWOkUFS63Q7QARgoeOaCc-WZPUfzV1-bo',
//     };
//   }

//   // static void setTokenIntoHeaderAfterLogin(String token) {
//   //   dio?.options.headers = {
//   //     'Authorization': 'Bearer $token',
//   //   };
//   // }

//   static void addDioInterceptor() {
//     dio?.interceptors.add(
//       PrettyDioLogger(
//         requestBody: true,
//         requestHeader: true,
//         responseHeader: true,
//         error: true,
//         responseBody: true,
//       ),
//     );
//   }
// }
