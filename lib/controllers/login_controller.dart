import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posadmin/constant/auth_contanstans.dart';
import 'package:posadmin/services/network_services/authentication_api_services/login_api_services.dart';
import 'package:posadmin/views/home_views/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart' as dio;

class AuthController extends GetxController {
  LoginApiService loginApiService = LoginApiService();

  userLogin({required String email, required String password}) async {
    final prefs = await SharedPreferences.getInstance();

    dio.Response<dynamic> response =
        await loginApiService.loginApi(email: email, password: password);

    if (response.statusCode == 200) {
      await prefs.setString(authToken, response.data["data"]["token"]);
      Get.offAll(() => HomeScreen());
      Get.snackbar("Login successfull", "",
          colorText: Colors.white,
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar("Invalid Username or password", "",
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
