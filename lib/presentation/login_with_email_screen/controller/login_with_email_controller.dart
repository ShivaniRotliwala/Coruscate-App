import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/login_with_email_screen/models/login_with_email_model.dart';
import 'package:flutter/material.dart';

class LoginWithEmailController extends GetxController with StateMixin<dynamic> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginWithEmailModel> loginWithEmailModelObj = LoginWithEmailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
