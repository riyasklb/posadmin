// To parse this JSON data, do
//
//     final getUsersList = getUsersListFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetUsersList getUsersListFromJson(String str) =>
    GetUsersList.fromJson(json.decode(str));

String getUsersListToJson(GetUsersList data) => json.encode(data.toJson());

class GetUsersList {
  GetUsersList({
    required this.success,
    required this.data,
    required this.message,
  });

  bool success;
  List<GetUserData> data;
  String message;

  factory GetUsersList.fromJson(Map<String, dynamic> json) => GetUsersList(
        success: json["success"],
        data: List<GetUserData>.from(
            json["data"].map((x) => GetUserData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class GetUserData {
  GetUserData({
    required this.userId,
    required this.staffId,
    required this.userName,
    required this.phone,
    required this.email,
  });

  int userId;
  dynamic staffId;
  String userName;
  String phone;
  String email;

  factory GetUserData.fromJson(Map<String, dynamic> json) => GetUserData(
        userId: json["userId"] ?? 0,
        staffId: json["staffId"] ?? "",
        userName: json["userName"] ?? "",
        phone: json["phone"] ?? "",
        email: json["email"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "staffId": staffId,
        "userName": userName,
        "phone": phone,
        "email": email,
      };
}
