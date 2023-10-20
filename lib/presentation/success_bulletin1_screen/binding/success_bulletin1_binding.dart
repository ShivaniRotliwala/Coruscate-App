import '../controller/success_bulletin1_controller.dart';
import 'package:get/get.dart';

class SuccessBulletin1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessBulletin1Controller());
  }
}
