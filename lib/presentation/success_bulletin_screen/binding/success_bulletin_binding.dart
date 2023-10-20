import '../controller/success_bulletin_controller.dart';
import 'package:get/get.dart';

class SuccessBulletinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessBulletinController());
  }
}
