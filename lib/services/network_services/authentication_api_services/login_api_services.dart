import 'dart:io';
import 'package:dio/dio.dart';
import 'package:posadmin/services/base_urls/base_urls.dart';

class LoginApiService extends BaseApiServices {
  Future loginApi({required String email, required String password}) async {
    dynamic responseJson;

    try {
      var dio = Dio();
      var response = await dio.post(
        loginUrl,
        options: Options(
            headers: {
              'Accept': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! <= 500;
            }),
        data: {"email": email, "password": password},
      );
      print("::::::::<Login>::::::::status code::::::::::::::");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }
}
