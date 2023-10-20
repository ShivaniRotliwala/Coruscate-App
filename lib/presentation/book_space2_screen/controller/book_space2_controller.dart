import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/book_space2_screen/models/book_space2_model.dart';
import 'package:flutter/material.dart';
import 'package:coruscate/data/apiClient/api_client.dart';

class BookSpace2Controller extends GetxController with StateMixin<dynamic> {
  TextEditingController linkController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController desController = TextEditingController();

  Rx<BookSpace2Model> bookSpace2ModelObj = BookSpace2Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    linkController.dispose();
    dateController.dispose();
    timeController.dispose();
    desController.dispose();
  }

  void callCreateWebinarlist(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createWebinarlist(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        },
        onSuccess: (resp) {
          onCreateWebinarlistSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateWebinarlistError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateWebinarlistSuccess(var response) {
    print(response);
    // postUserlistResp = PostUserlistResp.fromJson(response);
    // if (postUserlistResp != null) {
    //   if (postUserlistResp.data != null) {
    //     for (var item in postUserlistResp.data!.data!) {
    //       var addressItemModel = AddressItemModel();
    //       addressItemModel.name.value = item.email ?? 'null email';
    //       addressItemModel.address.value = item.password ?? 'null password';
    //       addressModelObj.value.addressItemList.add(addressItemModel);
    //     }
    //   }
    // }
  }
}

void onCreateWebinarlistError(var err) {
  if (err is NoInternetException) {
    Get.rawSnackbar(
      messageText: Text(
        '$err',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
