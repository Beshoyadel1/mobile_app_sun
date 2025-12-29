import 'package:dio/dio.dart';

import '../../../features/auth/sign_up/model/sign-up_model.dart';
import '../../constants.dart';



class Network {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: apiBaseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 1000 * 20),
      receiveTimeout: Duration(seconds: 1000 * 20),
    ),
  );


  static Future<Response> getData( String url) async {
    return await dio.get(url,
        options: Options(headers: myHeaders)
    );
  }


  static Future<Response> putDataWithBodyAndQuery(var jsonData , var jsonQuery , String url) async {
    return await dio.put(url,
      options: Options(headers: myHeaders ),
      data: jsonData,
      queryParameters: jsonQuery,
    );
  }

  static Future<Response> getDataWithBodyAndQuery(var jsonData , var jsonQuery , String url) async {
    return await dio.post(url,
      data: jsonData,
      options: Options(headers: myHeaders ),
      queryParameters: jsonQuery,
    );
  }

  static Future<Response> deleteData( var jsonQuery , String url) async {
    return await dio.delete(url,
      options: Options(headers: myHeaders ),
      queryParameters: jsonQuery,
    );
  }


  static Future<Response> getDataWithQuery( var jsonQuery , String url) async {
    return await dio.post(url,
      options: Options(headers: myHeaders ),
      queryParameters: jsonQuery,
    );
  }


  static Future<Response> registerUser(SignUpModel user) async {
    try {
      final response = await dio.post(
        registerUrl,
        data: user.toJson(),
      );
      return response;
    } on DioException catch (e) {
      throw e;
    }
  }

}
