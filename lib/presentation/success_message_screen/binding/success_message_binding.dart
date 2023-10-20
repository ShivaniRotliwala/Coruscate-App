import '../controller/success_message_controller.dart';
import 'package:get/get.dart';

class SuccessMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessMessageController());
  }
}
