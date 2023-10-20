import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/success_bulletin1_screen/models/success_bulletin1_model.dart';

class SuccessBulletin1Controller extends GetxController
    with StateMixin<dynamic> {
  Rx<SuccessBulletin1Model> successBulletin1ModelObj =
      SuccessBulletin1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
