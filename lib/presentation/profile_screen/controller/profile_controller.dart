import 'dart:developer';

import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/expertiesListModel/post_expertieslist_resp.dart';
import 'package:coruscate/data/models/meetingListByIdModel/post_meetinglistbyid_resp.dart';
import 'package:coruscate/data/models/meetingListModel/post_meetinglist_resp.dart';
import 'package:coruscate/data/models/userInfoModel/post_userinfo_resp.dart';
import 'package:coruscate/presentation/book_space_screen/controller/book_space_controller.dart';
import 'package:coruscate/presentation/profile_screen/models/profile_item_model.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController with StateMixin<dynamic> {
  TextEditingController editController = TextEditingController();
  TextEditingController expertiesController = TextEditingController();
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;
  PostMeetingListResp postUserMeetingListResp = PostMeetingListResp();
  PostExpertiesListResp postExpertiesListResp = PostExpertiesListResp();
  PostUserInfoListResp postUserInfoListResp = PostUserInfoListResp();
  PostMeetingListByIdResp postMeetingListByIdResp = PostMeetingListByIdResp();
  var bookSpaceController = Get.put(BookSpaceController());
  @override
  void onInit() {
    // Get.find<PrefUtils>().setUserid();
    String justCheck = Get.find<PrefUtils>().getUserid();
    log('Session UserId=>${justCheck}');
    // TODO: implement onInit

    callDisplayUserMeetinglist();
    callDisplayExpertieslist();
    callDisplayUserInfo();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    editController.dispose();
  }

  void callDisplayUserMeetinglist(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().dispalyUserMeetinglist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
      },
      onSuccess: (resp) {
        onDisplayUserMeetinglistSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onDisplayUserMeetinglistError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req
    );
  }

  void onDisplayUserMeetinglistSuccess(var response) {
    profileModelObj.value.meetingByUserItemList.clear();
    print(response);
    postUserMeetingListResp = PostMeetingListResp.fromJson(response);
    if (postUserMeetingListResp != null) {
      if (postUserMeetingListResp.data != null) {
        for (var item in postUserMeetingListResp.data!.data!) {
          var displayUserMeetingItemModel = ProfilepageItemModel();
          displayUserMeetingItemModel.UserMeetingTitle.value =
              item.meetingTitle ?? 'null MeetingTitle';
          displayUserMeetingItemModel.UserMeetingId.value =
              item.id ?? 'null Id';
          displayUserMeetingItemModel.UserMeetingDate.value =
              item.meetingDate ?? 'null Meeting Date';
          log('Display Meeting Date=>${displayUserMeetingItemModel.UserMeetingDate.value}');
          displayUserMeetingItemModel.UserMeetingFromTime.value =
              item.meetingFrom ?? 'null From Time';
          displayUserMeetingItemModel.UserMeetingToTime.value =
              item.meetingTo ?? 'null To Time';
          displayUserMeetingItemModel.UserUserId.value =
              item.userId ?? 'null User Id';
          displayUserMeetingItemModel.UserMeetingDesc.value =
              item.meetingDescription ?? 'null Meeting Desc:';
          displayUserMeetingItemModel.UserMeetingImg.value =
              item.meetingImage ?? 'null Meeting Space Image:';
          if (displayUserMeetingItemModel.UserUserId.value
                  .compareTo(Get.find<PrefUtils>().getUserid()) ==
              0) {
            log("My meeting");
            profileModelObj.value.meetingByUserItemList
                .add(displayUserMeetingItemModel);
          }
          // else {
          //   log('--------------------------------------------------');
          //   log('Id=>${displayUserMeetingItemModel.UserUserId.value}');
          //   log('Session Id=>${Get.find<PrefUtils>().getUserid()}');
          //   log('Not able to compare=>${displayUserMeetingItemModel.UserMeetingTitle.value}');
          //   log('--------------------------------------------------');
          // }

        }
        // profileModelObj.value.homepageNextMeetingItemList.sort((a, b) =>
        //     a.MeetingFromTime.compareTo(b.MeetingFromTime.toString()));
        // log('Sort by Day and within 2 hour: ' +
        //     homepageModelObj.value.homepageNextMeetingItemList.toString());
        // homepageModelObj.value.homepageTopNextMeetingItemList.sort((a, b) =>
        //     a.MeetingFromTime.compareTo(b.MeetingFromTime.toString()));
        // log('Sort by top from time : ' +
        //     homepageModelObj.value.homepageNextMeetingItemList.toString());
        profileModelObj.value.meetingByUserItemList.sort((a, b) =>
            DateTime.parse(a.UserMeetingDate.toString())
                .compareTo(DateTime.parse(b.UserMeetingDate.toString())));
        // homepageModelObj.value.homepageUpcomingItemList.sort((a, b) =>
        //     a.MeetingFromTime.compareTo(b.MeetingFromTime.toString()));
      }
    }
  }

  void callDeleteUserMeetinglist(
      {Map? req,
      VoidCallback? successCall,
      VoidCallback? errCall,
      required String id}) async {
    return Get.find<ApiClient>().deleteUserMeetinglist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg4ODIwMTQsImV4cCI6MTY0OTQ4MjAxNH0.xRVMVGT4Fzd_VMD-y6Ia_p-77FPKu9cZIo3E0Q97ea4',
      },
      onSuccess: (resp) {
        onDeleteUserMeetinglistSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onDeleteUserMeetinglistError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req,
      id: id,
    );
  }

  void onDeleteUserMeetinglistSuccess(var response) {
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

  void callUserMeetingById(
      {Map? req,
      VoidCallback? successCall,
      VoidCallback? errCall,
      required String id}) async {
    return Get.find<ApiClient>().getUserMeetingById(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg4ODIwMTQsImV4cCI6MTY0OTQ4MjAxNH0.xRVMVGT4Fzd_VMD-y6Ia_p-77FPKu9cZIo3E0Q97ea4',
      },
      onSuccess: (resp) {
        onCallUserMeetingByIdSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onCallUserMeetingByIdError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req,
      id: id,
    );
  }

  void onCallUserMeetingByIdSuccess(var response) async {
    print(response);
    postMeetingListByIdResp = PostMeetingListByIdResp.fromJson(response);
    bookSpaceController.meetingTitleController.text =
        postMeetingListByIdResp.data!.meetingTitle ?? 'Empty Meeting Title';
    bookSpaceController.dateController.text =
        postMeetingListByIdResp.data!.meetingDate ?? 'Empty Meeting Date';
    bookSpaceController.timeFromController.text =
        postMeetingListByIdResp.data!.meetingFrom ?? 'Empty From Time';
    bookSpaceController.timeToController.text =
        postMeetingListByIdResp.data!.meetingTo ?? 'Empty To Time';
    bookSpaceController.totalMemberController.text =
        postMeetingListByIdResp.data!.expectedMember.toString();
    bookSpaceController.meetingDescController.text =
        postMeetingListByIdResp.data!.meetingDescription ??
            'Empty Meeting desc';
    log('Edit Meeting Id=>${postMeetingListByIdResp.data!.id}');
    Get.find<PrefUtils>()
        .setMeetingIdForEditvalue(postMeetingListByIdResp.data!.id.toString());
    await Get.toNamed(AppRoutes.bookSpaceScreen);
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
    profileModelObj.value.expertiesList.clear();
    print(response);
    postExpertiesListResp = PostExpertiesListResp.fromJson(response);
    if (postExpertiesListResp != null) {
      if (postExpertiesListResp.data != null) {
        for (var item in postExpertiesListResp.data!.data!) {
          var displayExpertiesItemModel = ProfilepageItemModel();
          displayExpertiesItemModel.ExpertiesName.value =
              item.expertiesName ?? 'null MeetingTitle';
          displayExpertiesItemModel.UserUserId.value =
              item.userId ?? 'null User Id';
          if (displayExpertiesItemModel.UserUserId.value
                  .compareTo(Get.find<PrefUtils>().getUserid()) ==
              0) {
            log("My Experties");
            profileModelObj.value.expertiesList.add(displayExpertiesItemModel);
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

  void callCreateExpertieslist(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createExpertieslist(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
          //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg4ODIwMTQsImV4cCI6MTY0OTQ4MjAxNH0.xRVMVGT4Fzd_VMD-y6Ia_p-77FPKu9cZIo3E0Q97ea4',
        },
        onSuccess: (resp) {
          onCreateExpertieslistSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateExpertieslistError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateExpertieslistSuccess(var response) {
    print(response);
  }

  void callDisplayUserInfo(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createUserInfo(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        },
        onSuccess: (resp) {
          onCreateDisplayUserInfoSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateDisplayUserInfoError(err);
          if (errCall != null) {
            errCall();
          }
        });
    // requestData: req);
  }

  void onCreateDisplayUserInfoSuccess(var response) {
    postUserInfoListResp = PostUserInfoListResp.fromJson(response);
    log('-------------------In controller User Details=>$postUserInfoListResp');
    log('User Name=>${postUserInfoListResp.data!.username.toString()}');
    log('User Email=>${postUserInfoListResp.data!.email.toString()}');
    profileModelObj.value.ProfileUsername.value =
        postUserInfoListResp.data!.username.toString();
    log('User Name After Assiging=>${profileModelObj.value.ProfileUsername.value}');
    profileModelObj.value.ProfileUserEmail.value =
        postUserInfoListResp.data!.email.toString();
    log('User Name After Assiging=>${profileModelObj.value.ProfileUserEmail.value}');
    // Get.find<PrefUtils>()
    //     .setUsername(postUserInfoListResp.data!.username.toString());
    // Get.find<PrefUtils>()
    //     .setUseremail(postUserInfoListResp.data!.email.toString());
  }
}

void onDisplayUserMeetinglistError(var err) {
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

void onDeleteUserMeetinglistError(var err) {
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

void onCallUserMeetingByIdError(var err) {
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

void onCreateExpertieslistError(var err) {
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

void onCreateDisplayUserInfoError(var err) {
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
