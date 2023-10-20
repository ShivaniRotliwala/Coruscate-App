import 'dart:developer';

import 'package:coruscate/data/models/webinarListModel/post_webinarlist_resp.dart';
import 'package:coruscate/presentation/webinar_page/controller/webinar_controller.dart';

import '../../../data/apiClient/api_client.dart';
import '../models/webinar3_item_model.dart';
import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/webinar3_screen/models/webinar3_model.dart';
import 'package:flutter/material.dart';

class Webinar3Controller extends GetxController
    with SingleGetTickerProviderMixin, StateMixin<dynamic> {
  Rx<Webinar3Model> webinar3ModelObj = Webinar3Model().obs;
  //WebinarController webinarControllerObj = WebinarController();

  late TabController group19Controller =
      Get.put(TabController(vsync: this, length: 3));
  //PostWebinarListResp postWebinarListResp = PostWebinarListResp();
  // void onInit() {
  //   // TODO: implement onInit
  //   //callCreateWebinarlist();
  //   callCreateDisplayWebinarlist();

  //   super.onInit();
  //   //fetchSpace();
  //   //apiobj.fetchPost();
  // }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
  // void callCreateDisplayWebinarlist(
  //     {VoidCallback? successCall, VoidCallback? errCall}) async {
  //   return Get.find<ApiClient>().displayWebinarlist(
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'Authorization':
  //           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg0NDIwMjUsImV4cCI6MTY0OTA0MjAyNX0.NAQnlaS1plmGr1ib-D5YIYJAcw8_Lz7JU6SadxUai90',
  //     },
  //     onSuccess: (resp) {
  //       onCreateDisplayWebinarlistSuccess(resp);
  //       if (successCall != null) {
  //         successCall();
  //       }
  //     },
  //     onError: (err) {
  //       onCreateDisplayWebinarlistError(err);
  //       if (errCall != null) {
  //         errCall();
  //       }
  //     },
  //     //requestData: req
  //   );
  // }

  // void onCreateDisplayWebinarlistSuccess(var response) {
  //   log(response);
  //   postWebinarListResp = PostWebinarListResp.fromJson(response);
  //   if (postWebinarListResp != null) {
  //     if (postWebinarListResp.data != null) {
  //       for (var item in postWebinarListResp.data!.data!) {
  //         var webinar3ItemModel = Webinar3ItemModel();
  //         // spaceItemModel.spaceName.value = item.spaceName ?? 'null SpaceName';
  //         // log('Space Name=>${spaceItemModel.spaceName.value}');
  //         // spaceItemModel.spaceCapacity.value =
  //         //     item.totalMemberCapacity!.toInt();
  //         // log('Space Capacity=>${spaceItemModel.spaceCapacity.value}');
  //         // spaceItemModel.spaceTypeData.value =
  //         //     item.spaceType ?? 'null SpaceType';
  //         // selectSpaceModelObj.value.selectSpaceItemList.add(spaceItemModel);
  //         // print(selectSpaceModelObj.value.selectSpaceItemList.length);
  //         webinar3ItemModel.webinarDate.value = item.webinarDate ?? 'null date';
  //         log(webinar3ItemModel.webinarDate.toString());
  //         webinar3ItemModel.webinarLink.value = item.webinarLink ?? 'null Link';
  //         log(webinar3ItemModel.webinarLink.toString());
  //         webinar3ItemModel.webinarTime.value = item.webinarTime ?? 'null Time';
  //         webinar3ModelObj.value.webinar3ItemList.add(webinar3ItemModel);
  //         log(webinar3ModelObj.value.webinar3ItemList.length.toString());
  //       }
  //     }
  //   }
  // }


// void onCreateDisplayWebinarlistError(var err) {
//   if (err is NoInternetException) {
//     Get.rawSnackbar(
//       messageText: Text(
//         '$err',
//         style: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
