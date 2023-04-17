import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posadmin/constant/auth_contanstans.dart';
import 'package:posadmin/services/network_services/authentication_api_services/login_api_services.dart';
import 'package:posadmin/services/network_services/authentication_api_services/logout_api_services.dart';
import 'package:posadmin/views/home_views/home_screen.dart';
import 'package:posadmin/views/login_views/login_screen.dart';
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
      Get.offAll(() => const HomeScreen());
    } else if (response.statusCode == 404) {
      Get.rawSnackbar(
          message: "Unauthorized Login", backgroundColor: Colors.red);
    } else {
      Get.snackbar("Something went wrong", "",
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  //logout
  LogOutApiService logOutApiService = LogOutApiService();
  logOut() async {
    dio.Response<dynamic> response = await logOutApiService.logOutApiService();
    if (response.statusCode == 200) {
      Get.off(const LoginScreen());
      Get.rawSnackbar(
          message: "Logged out Successfully", backgroundColor: Colors.green);
    } else {
      Get.snackbar("Something went wrong", "",
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
