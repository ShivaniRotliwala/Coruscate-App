import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/meetingListModel/post_meetinglist_req.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/book_space_screen/models/book_space_model.dart';
import 'package:flutter/material.dart';

class BookSpaceController extends GetxController with StateMixin<dynamic> {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeFromController = TextEditingController();
  TextEditingController timeToController = TextEditingController();
  TextEditingController totalMemberController = TextEditingController();
  TextEditingController meetingTitleController = TextEditingController();
  TextEditingController meetingDescController = TextEditingController();

  RxString controllerDate = ''.obs;
  RxString controllerFromTime = ''.obs;
  RxString controllerToTime = ''.obs;
  RxString controllerMember = ''.obs;
  RxString controllerTitle = ''.obs;
  RxString controllerDesc = ''.obs;
  Rx<BookSpaceModel> bookSpaceModelObj = BookSpaceModel().obs;

  // PostMeetingListReq postMeetingListReq = PostMeetingListReq();
  @override
  void onInit() {
    super.onInit();
    dateController.addListener(() {
      controllerDate.value = dateController.text;
    });
    timeFromController.addListener(() {
      controllerFromTime.value = timeFromController.text;
    });
    timeToController.addListener(() {
      controllerToTime.value = timeToController.text;
    });
    totalMemberController.addListener(() {
      controllerMember.value = totalMemberController.text;
    });
    meetingTitleController.addListener(() {
      controllerTitle.value = meetingTitleController.text;
    });
    meetingDescController.addListener(() {
      controllerDesc.value = meetingDescController.text;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    // dateController.dispose();
    // timeToController.dispose();
    // timeFromController.dispose();
    // totalMemberController.dispose();
  }

  void callCreateMeetinglist(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createMeetinglist(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
          //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg5NzEzNjUsImV4cCI6MTY0OTU3MTM2NX0._cRQXvcIGz5j3nZeEuAN_b_ALGdlmBgaaGhXKjX69Xw',
        },
        onSuccess: (resp) {
          onCreateMeetinglistSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateMeetinglistError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateMeetinglistSuccess(var response) {
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

void onCreateMeetinglistError(var err) {
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
