import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginScreenController extends GetxController {
  GetStorage box = GetStorage();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  logIn() {
    if (email.text == "subhan" && password.text == "abc"||email.text == "admin" && password.text == "abcd") {
      box.write('auth', true);

      Get.toNamed(Routes.dashboard);
    } else {
      Get.snackbar('Oops!', 'Invailed Email or Password',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }
}
