import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../View/constants/bottom_navigation.dart';

class LoginController extends GetxController {
  RxBool showPassword = true.obs;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void checkLogin(BuildContext ctx) {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromARGB(255, 2, 117, 0),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text("Please fill all fields"),
        ),
      );
    } else if (usernameController.text == "ahammedrisvin@gmail.com" &&
        passwordController.text == "123") {
      Get.off(ScreenbottomNavigationBar());
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromARGB(255, 2, 117, 0),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text("Successfully logged in"),
        ),
      );
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromARGB(255, 225, 16, 1),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text("Username and password does not match"),
        ),
      );
    }
  }

  void passwordVisible() {
    showPassword.value = !showPassword.value;
    update();
  }
}
