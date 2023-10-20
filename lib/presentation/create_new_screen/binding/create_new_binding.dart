import '../controller/create_new_controller.dart';
import 'package:get/get.dart';

class CreateNewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewController());
  }
}
