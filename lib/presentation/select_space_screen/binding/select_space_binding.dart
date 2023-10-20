import '../controller/select_space_controller.dart';
import 'package:get/get.dart';

class SelectSpaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectSpaceController());
  }
}
