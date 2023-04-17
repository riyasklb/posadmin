import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:posadmin/models/get_users_api_model.dart';
import 'package:posadmin/services/network_services/user_services/get_users_api_services.dart';

class UsersController extends GetxController {
  GetUsersApiService getUsersApiService = GetUsersApiService();

  List<GetUserData> getUserData = [];
  getUsers() async {
    dio.Response<dynamic> response =
        await getUsersApiService.getUsersApiService();
    if (response.statusCode == 200) {
      GetUsersList getUsersList = GetUsersList.fromJson(response.data);
      getUserData = getUsersList.data;
    } else {
      Get.snackbar("Something went wrong", "",
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
