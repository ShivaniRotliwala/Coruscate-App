import '../controller/webinar2_controller.dart';
import 'package:get/get.dart';

class Webinar2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Webinar2Controller());
  }
}
