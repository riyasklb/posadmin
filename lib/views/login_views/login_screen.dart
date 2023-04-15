import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posadmin/constant/app_color.dart';
import 'package:posadmin/controllers/login_controller.dart';
import 'package:posadmin/views/home_views/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authController = Get.find<AuthController>();

  var userName = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome To Admin Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                child: TextField(
                  controller: userName,
                  decoration: const InputDecoration(
                    hintText: "username",
                    prefixIcon: Image(
                      image: AssetImage("assets/icons/mail.png"),
                      color: Colors.grey,
                    ),
                    suffixIcon: Image(
                      image: AssetImage("assets/icons/down.png"),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                child: TextField(
                  controller: password,
                  decoration: const InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  if (userName.text.isNotEmpty && password.text.isNotEmpty) {
                    authController.userLogin(
                        email: userName.text, password: password.text);
                  } else {
                    Get.snackbar("Fill all the fields", "",
                        colorText: Colors.white,
                        backgroundColor: Colors.red,
                        snackPosition: SnackPosition.BOTTOM);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
