import 'dart:developer';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/login_screen/models/login_model.dart';

class LoginController extends GetxController with StateMixin<dynamic> {
  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onInit() {
    // Get.find<PrefUtils>().setUserid();
    // String justCheck = Get.find<PrefUtils>().getUserid();
    // log('Session UserId=>${justCheck}');
    // TODO: implement onInit

    super.onInit();
    //fetchSpace();
    //apiobj.fetchPost();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
