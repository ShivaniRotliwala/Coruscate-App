import '../models/success_cancel_model.dart';
import '/core/app_export.dart';
import 'package:get/get.dart';

class SuccessCancelController extends GetxController with StateMixin<dynamic> {
  Rx<SuccessCancelModel> successBulletinModelObj = SuccessCancelModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
