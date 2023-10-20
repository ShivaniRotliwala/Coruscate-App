import '../controller/webinar3_controller.dart';
import 'package:get/get.dart';

class Webinar3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Webinar3Controller());
  }
}
