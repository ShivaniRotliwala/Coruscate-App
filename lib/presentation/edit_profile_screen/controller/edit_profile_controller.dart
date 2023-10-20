import 'dart:developer';

import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/expertiesListModel/post_expertieslist_resp.dart';
import 'package:coruscate/data/models/userInfoModel/post_userinfo_req.dart';
import 'package:coruscate/data/models/userInfoModel/post_userinfo_resp.dart';
import 'package:coruscate/presentation/edit_profile_screen/models/edit_profile_item_model.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/edit_profile_screen/models/edit_profile_model.dart';

class EditProfileController extends GetxController with StateMixin<dynamic> {
  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;
  PostExpertiesListResp postExpertiesListResp = PostExpertiesListResp();
  PostUserInfoListResp postUserInfoListResp = PostUserInfoListResp();

  @override
  void onInit() {
    // Get.find<PrefUtils>().setUserid();
    String justCheck = Get.find<PrefUtils>().getUserid();
    log('Session UserId=>${justCheck}');
    // TODO: implement onInit

    //callDisplayUserMeetinglist();
    callDisplayExpertieslist();
    //callDisplayUserInfo();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callDisplayExpertieslist(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().displayExpertieslist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg4ODIwMTQsImV4cCI6MTY0OTQ4MjAxNH0.xRVMVGT4Fzd_VMD-y6Ia_p-77FPKu9cZIo3E0Q97ea4',
      },
      onSuccess: (resp) {
        onDisplayExpertieslistSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onDisplayExpertieslistError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req
    );
  }

  void onDisplayExpertieslistSuccess(var response) {
    editProfileModelObj.value.expertiesList.clear();
    print(response);
    postExpertiesListResp = PostExpertiesListResp.fromJson(response);
    if (postExpertiesListResp != null) {
      if (postExpertiesListResp.data != null) {
        for (var item in postExpertiesListResp.data!.data!) {
          var displayExpertiesItemModel = EditProfileItemModel();
          displayExpertiesItemModel.ExpertiesName.value =
              item.expertiesName ?? 'null MeetingTitle';
          displayExpertiesItemModel.UserUserId.value =
              item.userId ?? 'null User Id';
          if (displayExpertiesItemModel.UserUserId.value
                  .compareTo(Get.find<PrefUtils>().getUserid()) ==
              0) {
            log("My Experties");
            editProfileModelObj.value.expertiesList
                .add(displayExpertiesItemModel);
          }
          // else {
          //   log('--------------------------------------------------');
          //   log('Id=>${displayUserMeetingItemModel.UserUserId.value}');
          //   log('Session Id=>${Get.find<PrefUtils>().getUserid()}');
          //   log('Not able to compare=>${displayUserMeetingItemModel.UserMeetingTitle.value}');
          //   log('--------------------------------------------------');
          // }

        }
      }
    }
  }

  void callDisplayUserInfoForEdit(Rx<String> imageUrl,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().getUserInfo(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        },
        onSuccess: (resp) {
          onCreateDisplayUserInfoForEditSuccess(resp, imageUrl);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateDisplayUserInfoForEditError(err);
          if (errCall != null) {
            errCall();
          }
        });
    // requestData: req);
  }

  void onCreateDisplayUserInfoForEditSuccess(
      var response, Rx<String> imageUrl) async {
    postUserInfoListResp = PostUserInfoListResp.fromJson(response);
    PostUserInfoListReq postUserInfoListReq = PostUserInfoListReq();
    log('-------------------In controller User Details=>$postUserInfoListResp');
    log('User Name=>${postUserInfoListResp.data!.username.toString()}');
    log('User Email=>${postUserInfoListResp.data!.email.toString()}');
    postUserInfoListReq.username =
        postUserInfoListResp.data!.username.toString();
    // editProfileModelObj.value.EditProfileUsername.value =
    //     postUserInfoListResp.data!.username.toString();
    log('User Name After Assiging=>${postUserInfoListReq.userName}');
    postUserInfoListReq.userName =
        postUserInfoListResp.data!.userName.toString();
    postUserInfoListReq.email = postUserInfoListResp.data!.email.toString();
    // editProfileModelObj.value.EditProfileUserEmail.value =
    //     postUserInfoListResp.data!.email.toString();
    log('User Email After Assiging=>${postUserInfoListReq.email}');
    postUserInfoListReq.userCompany =
        postUserInfoListResp.data!.userCompany.toString();
    postUserInfoListReq.designation =
        postUserInfoListResp.data!.designation.toString();
    postUserInfoListReq.experties =
        postUserInfoListResp.data!.experties.toString();
    postUserInfoListReq.mobileNo =
        postUserInfoListResp.data!.mobileNo.toString();
    postUserInfoListReq.MobileNo =
        postUserInfoListResp.data!.mobileNo.toString();
    postUserInfoListReq.userId = 1;
    postUserInfoListReq.userImage = imageUrl.value.toString();
    postUserInfoListReq.userType = 1;
    log('User Image After Assiging=>${postUserInfoListReq.userImage}');
    //postUserInfoListResp.data!.userImage.toString();
    callUpdateUserProfileById(
      req: postUserInfoListReq.toJson(),
      successCall: _onCreateUserProfileUpdateSuccess,
      errCall: _onCreateUserProfileUpdateError,
      id: Get.find<PrefUtils>().getUserid(),
    );
    // Get.find<PrefUtils>()
    //     .setUsername(postUserInfoListResp.data!.username.toString());
    // Get.find<PrefUtils>()
    //     .setUseremail(postUserInfoListResp.data!.email.toString());
  }

  void callUpdateUserProfileById(
      {required Map req,
      VoidCallback? successCall,
      VoidCallback? errCall,
      required String id}) async {
    return Get.find<ApiClient>().updateUserProfileDataById(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg4ODIwMTQsImV4cCI6MTY0OTQ4MjAxNH0.xRVMVGT4Fzd_VMD-y6Ia_p-77FPKu9cZIo3E0Q97ea4',
      },
      onSuccess: (resp) {
        onCallUpdateUserProfileByIdSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onCallUpdateUserProfileByIdError(err);
        if (errCall != null) {
          errCall();
        }
      },
      requestData: req,
      id: id,
    );
  }

  void onCallUpdateUserProfileByIdSuccess(var response) async {
    postUserInfoListResp = PostUserInfoListResp.fromJson(response);
    //log('Updated User Name=>${postUserInfoListResp.data?.userName.toString()}');
    log('Updated User Profile=>${postUserInfoListResp.data!.userImage.toString()}');
    Get.find<PrefUtils>()
        .setUserImagevalue(postUserInfoListResp.data!.userImage.toString());
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

  void _onCreateUserProfileUpdateSuccess() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  void _onCreateUserProfileUpdateError() {}
}

void onDisplayExpertieslistError(var err) {
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

void onCreateDisplayUserInfoForEditError(var err) {
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

void onCallUpdateUserProfileByIdError(var err) {
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
