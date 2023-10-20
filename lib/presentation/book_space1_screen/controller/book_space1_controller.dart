import 'package:flutter/material.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/book_space1_screen/models/book_space1_model.dart';

class BookSpace1Controller extends GetxController with StateMixin<dynamic> {
  TextEditingController subjectController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  Rx<BookSpace1Model> bookSpace1ModelObj = BookSpace1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    subjectController.dispose();
    bodyController.dispose();
    fromTimeController.dispose();
    toTimeController.dispose();
    dateController.dispose();
  }
}
