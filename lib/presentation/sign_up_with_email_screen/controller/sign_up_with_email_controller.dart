import 'dart:developer';

import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/authloginModel/post_authlogin_resp.dart';
import 'package:coruscate/data/models/userInfoModel/post_userinfo_resp.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/sign_up_with_email_screen/models/sign_up_with_email_model.dart';
import 'package:flutter/material.dart';

class SignUpWithEmailController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpWithEmailModel> signUpWithEmailModelObj = SignUpWithEmailModel().obs;
  PostAuthLoginResp postAuthLoginResp = PostAuthLoginResp();
  PostUserInfoListResp postUserInfoListResp = PostUserInfoListResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    passwordController.dispose();
  }

  void callCreateAuthlogin(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createAuthlogin(
        headers: {
          'Content-Type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateAuthloginSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateAuthloginError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateAuthloginSuccess(var response) {
    postAuthLoginResp = PostAuthLoginResp.fromJson(response);
    log('In controller AuthResponse=>$postAuthLoginResp');
    //callDisplayUserInfo();
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

  void onCreateDisplayUserInfoSuccess(var response) async {
    postUserInfoListResp = PostUserInfoListResp.fromJson(response);
    log('-------------------In controller User Details=>$postUserInfoListResp');
    log('User Name=>${postUserInfoListResp.data!.username.toString()}');
    log('User Email=>${postUserInfoListResp.data!.email.toString()}');
    Get.find<PrefUtils>()
        .setUsername(postUserInfoListResp.data!.username.toString());
    Get.find<PrefUtils>()
        .setUseremail(postUserInfoListResp.data!.email.toString());
    Get.find<PrefUtils>()
        .setUserImagevalue(postUserInfoListResp.data!.userImage.toString());
    Get.find<PrefUtils>().setMeetingIdForEditvalue("0");
    await Get.toNamed(AppRoutes.homepageScreen);
    // imageUrl = postUserInfoListResp.data!.userImage.toString();
    // profileModelObj.value.ProfileUsername.value =
    //     postUserInfoListResp.data!.username.toString();
    // log('User Name After Assiging=>${profileModelObj.value.ProfileUsername.value}');
    // profileModelObj.value.ProfileUserEmail.value =
    //     postUserInfoListResp.data!.email.toString();
    // log('User Name After Assiging=>${profileModelObj.value.ProfileUserEmail.value}');
    // Get.find<PrefUtils>()
    //     .setUsername(postUserInfoListResp.data!.username.toString());
    // Get.find<PrefUtils>()
    //     .setUseremail(postUserInfoListResp.data!.email.toString());
  }

  void onCreateAuthloginError(var err) {
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
}
