import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/success_bulletin_screen/models/success_bulletin_model.dart';

class SuccessBulletinController extends GetxController
    with StateMixin<dynamic> {
  Rx<SuccessBulletinModel> successBulletinModelObj = SuccessBulletinModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
