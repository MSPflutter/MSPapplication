import 'package:dio/dio.dart';

class DioHelper{

  static Dio dio = Dio(
      BaseOptions(
        baseUrl: "https://mspapi.herokuapp.com/",
        receiveDataWhenStatusError: true,
      )
  );

  static Future<Response> getData({
    required String type,
  }) async {
    print(dio.options.baseUrl+type);
    return await dio.get(
        dio.options.baseUrl+type,
    );
  }

}