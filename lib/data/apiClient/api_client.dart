import 'dart:developer';

import 'package:coruscate/core/app_export.dart';
import 'package:coruscate/core/utils/progress_dialog_utils.dart';
import 'package:flutter/foundation.dart';

class ApiClient extends GetConnect {
  //var baseUrl = "http://192.168.50.153:5000";
  var baseUrl = "http://192.168.18.158:5000";

  //var baseUrl = "http://192.168.63.153:5000";
  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);

    httpClient.addResponseModifier((request, response) {
      if (kDebugMode) {
        print(request.url.toString());
      }
      if (response.statusCode == 401) {
        actionOnUnAuthorization();
      }
      return response;
    });
  }

  void actionOnUnAuthorization() {
    PrefUtils _prefUtils = Get.find();
    _prefUtils.clearPreferencesData();
    Get.offAllNamed(AppRoutes.initialRoute);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  Future createAuthlogin(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      log('reqData => ${requestData}');
      Response response = await httpClient.post('/device/auth/login',
          headers: headers, body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      log('body => ${response.statusCode}');
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createUserInfo(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      log('reqData => ${requestData}');
      Response response = await httpClient.get(
        '/device/api/v1/user/${Get.find<PrefUtils>().getUserid()}',
        headers: headers,
      );
      //ProgressDialogUtils.hideProgressDialog();
      log('body => ${response.statusCode}');
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future getUserInfo(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Edit Profile Get User Info API");
      await isNetworkConnected();
      log('reqData => ${requestData}');
      Response response = await httpClient.get(
        '/device/api/v1/user/${Get.find<PrefUtils>().getUserid()}',
        headers: headers,
      );
      //ProgressDialogUtils.hideProgressDialog();
      log('Get User Info body => ${response.statusCode}');
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createSpacelist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In create Space API");
      await isNetworkConnected();
      Response response = await httpClient.post('/device/api/v1/space/list',
          headers: headers, body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createWebinarlist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      log('reqData => ${requestData}');
      Response response = await httpClient.post(
          '/device/api/v1/user_x_webinar/create',
          headers: headers,
          body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      log('body => ${response.statusCode}');
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createLearnlist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Learn API");
      await isNetworkConnected();
      Response response = await httpClient.post('/device/api/v1/learn/list',
          headers: headers, body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future dispalyWebinarlist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Display Webinar API");
      await isNetworkConnected();
      Response response = await httpClient.post(
          '/device/api/v1/user_x_webinar/list',
          headers: headers,
          body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createTieuplist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In create tieup API");
      await isNetworkConnected();
      Response response = await httpClient.post('/device/api/v1/tieups/list',
          headers: headers, body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createMeetinglist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      log('reqData => ${requestData}');
      Response response = await httpClient.post('/device/api/v1/meeting/create',
          headers: headers, body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      log('body => ${response.statusCode}');
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future dispalyMeetinglist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Display Meeting API");
      await isNetworkConnected();
      log('Header In API=>$headers');
      Response response = await httpClient.post('/device/api/v1/meeting/list',
          headers: headers, body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      //ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future dispalyUserMeetinglist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    log('Profile API Header=>$headers');
    try {
      log("Comes In Display User Meeting List API");
      await isNetworkConnected();
      Response response = await httpClient.post('/device/api/v1/meeting/list',
          headers: headers, body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future deleteUserMeetinglist({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
    Map<String, String> headers = const {},
    Map requestData = const {},
    required String id,
  }) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Delete User Meeting List API");
      await isNetworkConnected();
      Response response = await httpClient
          .delete('/device/api/v1/meeting/delete/$id', headers: headers);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future displayExpertieslist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Display Experties API");
      await isNetworkConnected();
      Response response = await httpClient.post('/device/api/v1/experties/list',
          headers: headers, body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createExpertieslist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      log('reqData => ${requestData}');
      Response response = await httpClient.post(
          '/device/api/v1/experties/create',
          headers: headers,
          body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      log('body => ${response.statusCode}');
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future displayParticipantslist(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Display Participants API");
      await isNetworkConnected();
      Response response = await httpClient.post(
          '/device/api/v1/user_x_meeting/list',
          headers: headers,
          body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      //ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future getUserMeetingById({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
    Map<String, String> headers = const {},
    Map requestData = const {},
    required String id,
  }) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Get User By Id API");
      await isNetworkConnected();
      Response response =
          await httpClient.get('/device/api/v1/meeting/$id', headers: headers);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future updateUserMeetinglistById({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
    Map<String, String> headers = const {},
    Map requestData = const {},
    required String id,
  }) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Update User Meeting By Id API");
      await isNetworkConnected();
      Response response = await httpClient.put(
          '/device/api/v1/meeting/update/$id',
          headers: headers,
          body: requestData);
      //ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future updateUserProfileDataById({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
    Map<String, String> headers = const {},
    Map requestData = const {},
    required String id,
  }) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Update User Profile By Id API");
      await isNetworkConnected();
      log("Request data->${requestData.toString()}");
      log('Update Id=>${id}');
      Response response = await httpClient.put(
        '/device/api/v1/user/update/$id',
        headers: headers,
        body: requestData,
      );
      //ProgressDialogUtils.hideProgressDialog();
      log('Edit Profile body => ${response.statusCode}');
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future displayParticipantImage(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {},
      required String id}) async {
    //ProgressDialogUtils.showProgressDialog();
    try {
      log("Comes In Get Participant Image By Id API");
      await isNetworkConnected();
      log('reqData => ${requestData}');
      Response response = await httpClient.get(
        '/device/api/v1/user/${id}',
        headers: headers,
      );
      //ProgressDialogUtils.hideProgressDialog();
      log('Get User Info body => ${response.statusCode}');
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }
}
