import '../controller/book_space1_controller.dart';
import 'package:get/get.dart';

class BookSpace1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookSpace1Controller());
  }
}
