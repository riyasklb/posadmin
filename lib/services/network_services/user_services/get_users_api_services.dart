import 'dart:io';
import 'package:dio/dio.dart';
import 'package:posadmin/services/base_urls/base_urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetUsersApiService extends BaseApiServices {
  Future getUsersApiService() async {
    dynamic responseJson;

    try {
      var dio = Dio();
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");
      var response = await dio.get(
        getUserApiUrl,
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
      print("::::::::<get-users>::::::::status code::::::::::::::$authtoken");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }
}
