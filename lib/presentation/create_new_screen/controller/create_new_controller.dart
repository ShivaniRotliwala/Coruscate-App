import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/create_new_screen/models/create_new_model.dart';

class CreateNewController extends GetxController with StateMixin<dynamic> {
  Rx<CreateNewModel> createNewModelObj = CreateNewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
