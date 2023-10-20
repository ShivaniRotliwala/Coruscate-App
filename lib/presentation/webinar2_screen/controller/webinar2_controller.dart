import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/tieupsListModel/post_tieuplist_resp.dart';
import 'package:coruscate/presentation/webinar2_screen/models/webinar2_item_model.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/webinar2_screen/models/webinar2_model.dart';

class Webinar2Controller extends GetxController with StateMixin<dynamic> {
  Rx<Webinar2Model> webinar2ModelObj = Webinar2Model().obs;
  PostTieupListResp postTieupListResp = PostTieupListResp();

  @override
  void onInit() {
    // TODO: implement onInit
    callCreateTieuplist();

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

  void callCreateTieuplist(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createTieuplist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg5NzEzNjUsImV4cCI6MTY0OTU3MTM2NX0._cRQXvcIGz5j3nZeEuAN_b_ALGdlmBgaaGhXKjX69Xw',
      },
      onSuccess: (resp) {
        onCreateTieuplistSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onCreateTieuplistError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req
    );
  }

  void onCreateTieuplistSuccess(var response) {
    print(response);
    postTieupListResp = PostTieupListResp.fromJson(response);
    if (postTieupListResp != null) {
      if (postTieupListResp.data != null) {
        for (var item in postTieupListResp.data!.data!) {
          var tieupItemModel = Webinar2ItemModel();
          tieupItemModel.orgName.value =
              item.organizationName ?? 'null Organization Name';
          tieupItemModel.orgDesc.value =
              item.organizationDescription ?? 'null Description';
          tieupItemModel.orgImg.value = item.organizationImage ?? 'null Image';
          webinar2ModelObj.value.webinar2ItemList.add(tieupItemModel);
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

void onCreateTieuplistError(var err) {
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
