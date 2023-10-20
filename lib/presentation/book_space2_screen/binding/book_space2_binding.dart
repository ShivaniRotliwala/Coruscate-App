import '../controller/book_space2_controller.dart';
import 'package:get/get.dart';

class BookSpace2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookSpace2Controller());
  }
}
