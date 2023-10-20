import 'dart:developer';

import 'package:coruscate/core/utils/progress_dialog_utils.dart';
import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/webinarListModel/post_webinarlist_req.dart';
import 'package:coruscate/data/models/webinarListModel/post_webinarlist_resp.dart';
import 'package:coruscate/presentation/webinar_page/models/webinar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/webinar_page/models/webinar_model.dart';

class WebinarController extends GetxController with StateMixin<dynamic> {
  WebinarController(this.webinarModelObj) {}
  Rx<WebinarModel> webinarModelObj;
  //Rx<WebinarModel> webinarModelObj = WebinarModel().obs;
  PostWebinarListResp postWebinarListResp = PostWebinarListResp();
  Rx<bool> getAllEvent = RxBool(true);
  num page = 1;
  late var cntUpcoming = 0;
  late var cntCompleted = 0;
  RxInt totalItem = 0.obs;
  RxInt count = 0.obs;

  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  var scrollcontroller = ScrollController();

  RxBool isApiCalling = false.obs;
  static bool isEventApiCalling = true;
  @override
  void onInit() {
    // TODO: implement onInit
    //callDisplayWebinarlist();

    super.onInit();
    //fetchSpace();
    //apiobj.fetchPost();
  }

  @override
  void onReady() {
    if (getAllEvent.value == true) {
      if (isEventApiCalling) {
        webinarModelObj.value.webinarItemList.clear();
        this.callDisplayWebinarlist(false, isLoading: true);
      }
    }
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callDisplayWebinarlist(bool isRefress,
      {bool isLoading = true,
      bool isAPIForceLoader = false,
      VoidCallback? successCall,
      VoidCallback? errCall}) async {
    if (isRefress) {
      log('------Comes In IsRefresh----------');
      page = 1;
      webinarModelObj.value.webinarItemList.clear();
    }
    PostWebinarListReq postWebinarListReq = PostWebinarListReq();
    Options options = Options();
    Query query = Query();
    options.page = page as int?;
    options.limit = 10;
    postWebinarListReq.query = query;
    postWebinarListReq.isCountOnly = false;
    postWebinarListReq.options = options;

    return Get.find<ApiClient>().dispalyWebinarlist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        // 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg5NzEzNjUsImV4cCI6MTY0OTU3MTM2NX0._cRQXvcIGz5j3nZeEuAN_b_ALGdlmBgaaGhXKjX69Xw',
      },
      onSuccess: (resp) {
        isApiCalling.value = false;
        onDisplayWebinarlistSuccess(resp);
        // if (successCall != null) {
        //   successCall();
        // }
        page = page + 1;
        log('On success page Count->${page}');
        refreshController.refreshCompleted(resetFooterState: true);
        refreshController.loadComplete();
        //ProgressDialogUtils.hideProgressDialog();
      },
      onError: (err) {
        isApiCalling.value = false;
        page = 1;
        totalItem.value = 0;
        count.value = 0;
        webinarModelObj.value.webinarItemList.clear();
        onDisplayWebinarlistError(err);
        // if (errCall != null) {
        //   errCall();
        // }
        refreshController.refreshCompleted(resetFooterState: true);
        refreshController.loadComplete();
      },
      requestData: postWebinarListReq.toJson(),
    );
  }

  void onDisplayWebinarlistSuccess(var response) {
    webinarModelObj.value.webinarItemList.clear();
    webinarModelObj.value.webinarCompletedItemList.clear();
    webinarModelObj.value.webinarUpcomingItemList.clear();
    print(response);
    postWebinarListResp = PostWebinarListResp.fromJson(response);
    if (postWebinarListResp != null) {
      if (postWebinarListResp.data != null) {
        for (var item in postWebinarListResp.data!.data!) {
          var displayWebinarItemModel = WebinarItemModel();
          displayWebinarItemModel.webinarDate.value =
              item.webinarDate ?? 'null date';
          displayWebinarItemModel.webinarLink.value =
              item.webinarLink ?? 'null WebinarLink';
          displayWebinarItemModel.webinarTime.value =
              item.webinarTime ?? 'null Time';
          webinarModelObj.value.webinarItemList.add(displayWebinarItemModel);
          var temp = DateTime.now();
          log('TodayDate=>${temp}');
          var d1 = DateTime.utc(temp.year, temp.month, temp.day);
          log('d1=>${d1}');
          late DateTime dtData =
              DateTime.parse(displayWebinarItemModel.webinarDate.toString());
          var d2 = DateTime.utc(dtData.year, dtData.month, dtData.day);
          log('d2=>${d2}');

          if (d2.compareTo(d1) > 0) {
            cntUpcoming++;
            webinarModelObj.value.webinarUpcomingItemList
                .add(displayWebinarItemModel);
            log('ul=>${webinarModelObj.value.webinarUpcomingItemList.length}');
          } else if (d2.compareTo(d1) < 0) {
            cntCompleted++;
            webinarModelObj.value.webinarCompletedItemList
                .add(displayWebinarItemModel);
            log('cl=>${webinarModelObj.value.webinarCompletedItemList.length}');
          }
        }
        log('Upcoming=>${cntUpcoming}');
        log('Completed=>${cntCompleted}');
        webinarModelObj.value.webinarItemList.sort((a, b) =>
            DateTime.parse(a.webinarDate.toString())
                .compareTo(DateTime.parse(b.webinarDate.toString())));
        webinarModelObj.value.webinarCompletedItemList.sort((a, b) =>
            DateTime.parse(a.webinarDate.toString())
                .compareTo(DateTime.parse(b.webinarDate.toString())));
        webinarModelObj.value.webinarUpcomingItemList.sort((a, b) =>
            DateTime.parse(a.webinarDate.toString())
                .compareTo(DateTime.parse(b.webinarDate.toString())));
      }
    }
    totalItem.value =
        postWebinarListResp.data!.paginator!.itemCount?.toInt() ?? 0;
    log('On Success Total Item In DB->${totalItem.value}');
    webinarModelObj.refresh();
    count.value = webinarModelObj.value.webinarItemList.length;
    log('On Success Count List->${count.value}');
  }
}

void onDisplayWebinarlistError(var err) {
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
