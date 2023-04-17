import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:posadmin/services/base_urls/base_urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOutApiService extends BaseApiServices {
  Future logOutApiService() async {
    dynamic responseJson;

    try {
      var dio = Dio();
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");
      var response = await dio.post(
        logoutUrl,
        options: Options(
            headers: {
              'Accept': 'application/json',
              'Authorization': 'Bearer $authtoken'
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! <= 500;
            }),
      );
      print("::::::::<Logout>::::::::status code::::::::::::::$authtoken");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }
}
