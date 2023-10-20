import '../controller/login_with_email_controller.dart';
import 'package:get/get.dart';

class LoginWithEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginWithEmailController());
  }
}
