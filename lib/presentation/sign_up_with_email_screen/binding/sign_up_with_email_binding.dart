import '../controller/sign_up_with_email_controller.dart';
import 'package:get/get.dart';

class SignUpWithEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpWithEmailController());
  }
}
