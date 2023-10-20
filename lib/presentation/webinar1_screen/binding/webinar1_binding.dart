import '../controller/webinar1_controller.dart';
import 'package:get/get.dart';

class Webinar1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Webinar1Controller());
  }
}
