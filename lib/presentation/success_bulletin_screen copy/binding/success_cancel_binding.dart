import '../controller/success_cancel_controller.dart';
import 'package:get/get.dart';

class SuccessCancelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessCancelController());
  }
}
