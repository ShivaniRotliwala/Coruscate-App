import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/success_message_screen/models/success_message_model.dart';

class SuccessMessageController extends GetxController with StateMixin<dynamic> {
  Rx<SuccessMessageModel> successMessageModelObj = SuccessMessageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
