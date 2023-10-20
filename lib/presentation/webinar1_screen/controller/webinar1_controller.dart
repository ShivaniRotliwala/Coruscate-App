import 'dart:developer';

import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/learnListModel/post_learnlist_resp.dart';
import 'package:coruscate/presentation/webinar1_screen/models/webinar1_item_model.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/webinar1_screen/models/webinar1_model.dart';

class Webinar1Controller extends GetxController with StateMixin<dynamic> {
  Rx<Webinar1Model> webinar1ModelObj = Webinar1Model().obs;
  PostLearnListResp postLearnListResp = PostLearnListResp();

  void onInit() {
    // TODO: implement onInit
    callCreateLearnlist();

    super.onInit();
    //fetchSpace();
    //apiobj.fetchPost();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callCreateLearnlist(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createLearnlist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg5NzEzNjUsImV4cCI6MTY0OTU3MTM2NX0._cRQXvcIGz5j3nZeEuAN_b_ALGdlmBgaaGhXKjX69Xw',
      },
      onSuccess: (resp) {
        onCreateLearnlistSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onCreateLearnlistError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req
    );
  }

  void onCreateLearnlistSuccess(var response) {
    print(response);
    postLearnListResp = PostLearnListResp.fromJson(response);
    if (postLearnListResp != null) {
      if (postLearnListResp.data != null) {
        for (var item in postLearnListResp.data!.data!) {
          var learnItemModel = Webinar1ItemModel();
          learnItemModel.learnSubjectDesc.value =
              item.subjectDescription ?? 'null subjectDesc';
          learnItemModel.learnSubjectName.value =
              item.subjectName ?? 'null subjctName';
          learnItemModel.userId.value = item.userId ?? 'null userId';
          webinar1ModelObj.value.webinar1ItemList.add(learnItemModel);
          log(webinar1ModelObj.value.webinar1ItemList.length.toString());
          // spaceItemModel.spaceName.value = item.spaceName ?? 'null SpaceName';
          // log('Space Name=>${spaceItemModel.spaceName.value}');
          // spaceItemModel.spaceCapacity.value =
          //     item.totalMemberCapacity!.toInt();
          // log('Space Capacity=>${spaceItemModel.spaceCapacity.value}');
          // spaceItemModel.spaceTypeData.value =
          //     item.spaceType ?? 'null SpaceType';
          // selectSpaceModelObj.value.selectSpaceItemList.add(spaceItemModel);
          // print(selectSpaceModelObj.value.selectSpaceItemList.length);
        }
      }
    }
  }
}

void onCreateLearnlistError(var err) {
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
