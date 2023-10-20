import 'dart:developer';
// import 'dart:ffi';

import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/spaceListModel/post_spacelist_resp.dart';
import 'package:coruscate/presentation/select_space_screen/models/select_space_item_model.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/select_space_screen/models/select_space_model.dart';

class SelectSpaceController extends GetxController with StateMixin<dynamic> {
  Rx<SelectSpaceModel> selectSpaceModelObj = SelectSpaceModel().obs;
  PostSpaceListResp postSpaceListResp = PostSpaceListResp();

  @override
  void onInit() {
    // TODO: implement onInit
    callCreateSpacelist();

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

  void callCreateSpacelist(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createSpacelist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg5NzEzNjUsImV4cCI6MTY0OTU3MTM2NX0._cRQXvcIGz5j3nZeEuAN_b_ALGdlmBgaaGhXKjX69Xw',
      },
      onSuccess: (resp) {
        onCreateSpacelistSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onCreateSpacelistError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req
    );
  }

  void onCreateSpacelistSuccess(var response) {
    print(response);
    postSpaceListResp = PostSpaceListResp.fromJson(response);
    if (postSpaceListResp != null) {
      if (postSpaceListResp.data != null) {
        for (var item in postSpaceListResp.data!.data!) {
          var spaceItemModel = SelectSpaceItemModel();
          spaceItemModel.spaceName.value = item.spaceName ?? 'null SpaceName';
          spaceItemModel.spaceId.value = item.id.toString();
          log('Space Name=>${spaceItemModel.spaceName.value}');
          spaceItemModel.spaceCapacity.value =
              item.totalMemberCapacity!.toInt();
          log('Space Capacity=>${spaceItemModel.spaceCapacity.value}');
          spaceItemModel.spaceTypeData.value =
              item.spaceType ?? 'null SpaceType';
          spaceItemModel.spaceImage.value = item.spaceImage ?? 'null Image';
          selectSpaceModelObj.value.selectSpaceItemList.add(spaceItemModel);
          print(selectSpaceModelObj.value.selectSpaceItemList.length);
        }
      }
    }
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

  void callUpdateUserMeetingById(
      {required Map req,
      VoidCallback? successCall,
      VoidCallback? errCall,
      required String id}) async {
    return Get.find<ApiClient>().updateUserMeetinglistById(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg4ODIwMTQsImV4cCI6MTY0OTQ4MjAxNH0.xRVMVGT4Fzd_VMD-y6Ia_p-77FPKu9cZIo3E0Q97ea4',
      },
      onSuccess: (resp) {
        onCallUpdateUserMeetingByIdSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onCallUpdateUserMeetingByIdError(err);
        if (errCall != null) {
          errCall();
        }
      },
      requestData: req,
      id: id,
    );
  }

  void onCallUpdateUserMeetingByIdSuccess(var response) async {
    print('Updated Meeting=>${response.body}');
    // postMeetingListByIdResp = PostMeetingListByIdResp.fromJson(response);
    // bookSpaceController.meetingTitleController.text =
    //     postMeetingListByIdResp.data!.meetingTitle ?? 'Empty Meeting Title';
    // bookSpaceController.dateController.text =
    //     postMeetingListByIdResp.data!.meetingDate ?? 'Empty Meeting Date';
    // bookSpaceController.timeFromController.text =
    //     postMeetingListByIdResp.data!.meetingFrom ?? 'Empty From Time';
    // bookSpaceController.timeToController.text =
    //     postMeetingListByIdResp.data!.meetingTo ?? 'Empty To Time';
    // bookSpaceController.totalMemberController.text =
    //     postMeetingListByIdResp.data!.expectedMember.toString();
    // bookSpaceController.meetingDescController.text =
    //     postMeetingListByIdResp.data!.meetingDescription ??
    //         'Empty Meeting desc';
    // log('Edit Meeting Id=>${postMeetingListByIdResp.data!.id}');
    // Get.find<PrefUtils>()
    //     .setMeetingIdForEditvalue(postMeetingListByIdResp.data!.id.toString());
    // await Get.toNamed(AppRoutes.bookSpaceScreen);
  }
}

void onCreateSpacelistError(var err) {
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

void onCallUpdateUserMeetingByIdError(var err) {
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
