import '../controller/book_space_controller.dart';
import 'package:get/get.dart';

class BookSpaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookSpaceController());
  }
}
