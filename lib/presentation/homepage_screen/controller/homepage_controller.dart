import 'dart:async';
import 'dart:developer';

import 'package:coruscate/data/apiClient/api_client.dart';
import 'package:coruscate/data/models/meetingListModel/post_meetinglist_resp.dart';
import 'package:coruscate/data/models/participantsModel/post_participantslist_resp.dart';
import 'package:coruscate/data/models/userInfoModel/post_userinfo_resp.dart';
import 'package:coruscate/presentation/homepage_screen/models/homepage_item_model.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';
import 'package:get/get.dart';
import 'package:coruscate/presentation/homepage_screen/models/homepage_model.dart';

class HomepageController extends GetxController with StateMixin<dynamic> {
  Rx<HomepageModel> homepageModelObj = HomepageModel().obs;
  PostMeetingListResp postMeetingListResp = PostMeetingListResp();
  PostUserInfoListResp postUserInfoListResp = PostUserInfoListResp();
  PostParticipantListResp postParticipantListResp = PostParticipantListResp();
  late var cntUpcomingMeeting = 0;
  late var cntCompletedMeeting = 0;
  late var imageUrl;
  late var cnt = 0;

  @override
  Future<void> onInit() async {
    //Get.find<PrefUtils>().setUserid();
    // TODO: implement onInit
    callDisplayMeetinglist();
    callDisplayParticipantslist();
    //callDisplayUserInfo();
    // checkTopList();
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

  callDisplayMeetinglist(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().dispalyMeetinglist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg5NzEzNjUsImV4cCI6MTY0OTU3MTM2NX0._cRQXvcIGz5j3nZeEuAN_b_ALGdlmBgaaGhXKjX69Xw',
      },
      onSuccess: (resp) {
        onDisplayMeetinglistSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onDisplayMeetinglistError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req
    );
  }

  void onDisplayMeetinglistSuccess(var response) {
    homepageModelObj.value.homepageItemList.clear();
    homepageModelObj.value.homepageNextMeetingItemList.clear();
    homepageModelObj.value.homepageTopNextMeetingItemList.clear();
    homepageModelObj.value.homepageUpcomingItemList.clear();
    log('Resp========>${response}');
    postMeetingListResp = PostMeetingListResp.fromJson(response);

    if (postMeetingListResp != null) {
      if (postMeetingListResp.data != null) {
        for (var item in postMeetingListResp.data!.data!) {
          var displayMeetingItemModel = HomepageItemModel();
          displayMeetingItemModel.MeetingTitle.value =
              item.meetingTitle ?? 'null MeetingTitle';
          log('****************************Display Meeting Title=>${displayMeetingItemModel.MeetingTitle.value}');
          displayMeetingItemModel.MeetingId.value = item.id ?? 'null Id';
          displayMeetingItemModel.MeetingDate.value =
              item.meetingDate ?? 'null Meeting Date';
          log('Display Meeting Date=>${displayMeetingItemModel.MeetingDate.value}');
          displayMeetingItemModel.MeetingFromTime.value =
              item.meetingFrom ?? 'null From Time';
          displayMeetingItemModel.MeetingToTime.value =
              item.meetingTo ?? 'null To Time';
          displayMeetingItemModel.UserId.value = item.userId ?? 'null User Id';
          displayMeetingItemModel.MeetingDesc.value =
              item.meetingDescription ?? 'null Meeting Desc:';
          displayMeetingItemModel.MeetingImg.value =
              item.meetingImage ?? 'null Meeting Space Image:';
          homepageModelObj.value.homepageItemList.add(displayMeetingItemModel);

          var temp = DateTime.now();
          log('TodayDate=>${temp}');
          var d1 = DateTime.utc(temp.year, temp.month, temp.day);
          log('d1=>${d1}');
          late String makeDate =
              '${displayMeetingItemModel.MeetingDate.value} ${displayMeetingItemModel.MeetingFromTime.value}:00';
          log('MakeDate=>${makeDate}');
          late DateTime dtData = DateTime.parse(makeDate);
          log('dTData=>${dtData}');
          var d2 = DateTime.utc(dtData.year, dtData.month, dtData.day);
          log('d2=>${d2}');
          if (d2.compareTo(d1) == 0) {
            String s = displayMeetingItemModel.MeetingFromTime.value;
            TimeOfDay _startTime = TimeOfDay(
                hour: int.parse(s.split(":")[0]),
                minute: int.parse(s.split(":")[1]));
            log('StartTime=>${_startTime}');

            TimeOfDay nowTime = TimeOfDay.now();
            log('Now Time=>${nowTime}');

            double _doubleYourTime = _startTime.hour.toDouble() +
                (_startTime.minute.toDouble() / 60);
            double _doubleNowTime =
                nowTime.hour.toDouble() + (nowTime.minute.toDouble() / 60);

            double _timeDiff = _doubleYourTime - _doubleNowTime;

            int _hr = _timeDiff.truncate();
            double _minute = (_timeDiff - _timeDiff.truncate()) * 60;
            int min = _minute.toInt();

            log('Here your Happy ${_hr} Hour and also ${min} min');
            if (_hr < 18) {
              homepageModelObj.value.homepageNextMeetingItemList
                  .add(displayMeetingItemModel);
              log('Today Date and within 2 hour Meeting=>${homepageModelObj.value.homepageNextMeetingItemList.length.toString()}');
              String str = displayMeetingItemModel.MeetingFromTime.value;
              TimeOfDay _startTimeVal = TimeOfDay(
                  hour: int.parse(str.split(":")[0]),
                  minute: int.parse(str.split(":")[1]));
              // log('StartTime=>${_startTime}');

              TimeOfDay nowTimeVal = TimeOfDay.now();
              log('Inside Widget Now Time=>${nowTimeVal}');

              double _doubleYourTimeVal = _startTimeVal.hour.toDouble() +
                  (_startTimeVal.minute.toDouble() / 60);
              double _doubleNowTimeVal = nowTimeVal.hour.toDouble() +
                  (nowTimeVal.minute.toDouble() / 60);

              double _timeDiffVal = _doubleYourTimeVal - _doubleNowTimeVal;

              int _hrVal = _timeDiffVal.truncate();
              double _minuteVal = (_timeDiffVal - _timeDiffVal.truncate()) * 60;
              int minVal = _minuteVal.toInt();

              log('(Widget)Here your Happy ${_hrVal} Hour and also ${minVal} min');
              if (_hrVal > 0 || minVal > 0) {
                homepageModelObj.value.homepageTopNextMeetingItemList
                    .add(displayMeetingItemModel);
              }
            }
          }
          if (dtData.compareTo(temp) >= 0) {
            log("Greater Than");
            cntUpcomingMeeting++;
            homepageModelObj.value.homepageUpcomingItemList
                .add(displayMeetingItemModel);
            log('>>>>>>>>>>>>>>>>>>>Upcomin ul=>${homepageModelObj.value.homepageUpcomingItemList.length}');
          }
        }
        homepageModelObj.value.homepageNextMeetingItemList.sort((a, b) =>
            a.MeetingFromTime.compareTo(b.MeetingFromTime.toString()));
        log('Sort by Day and within 2 hour: ' +
            homepageModelObj.value.homepageNextMeetingItemList.toString());
        homepageModelObj.value.homepageTopNextMeetingItemList.sort((a, b) =>
            a.MeetingFromTime.compareTo(b.MeetingFromTime.toString()));
        log('Sort by top from time : ' +
            homepageModelObj.value.homepageNextMeetingItemList.toString());
        homepageModelObj.value.homepageUpcomingItemList.sort((a, b) =>
            DateTime.parse(a.MeetingDate.toString())
                .compareTo(DateTime.parse(b.MeetingDate.toString())));
        // homepageModelObj.value.homepageUpcomingItemList.sort((a, b) =>
        //     a.MeetingFromTime.compareTo(b.MeetingFromTime.toString()));
      }
      if (homepageModelObj.value.homepageTopNextMeetingItemList.length != 0) {
        log('---------------------Top Of Top List->${homepageModelObj.value.homepageTopNextMeetingItemList[0].MeetingId.value}');
        Get.find<PrefUtils>().setMeetingIdvalue(homepageModelObj
            .value.homepageTopNextMeetingItemList[0].MeetingId.value);
      } else {
        log('-----------------Empty Top List');
        Get.find<PrefUtils>().setMeetingIdvalue("0");
      }
      // log('Upcoming=>${cntUpcoming}');
      // log('Completed=>${cntCompleted}');
    }
  }

  callDisplayParticipantslist(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().displayParticipantslist(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        //'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyM2YzNzA3ZDQyNGI3NTQ0YmU2ZGJmMCIsInVzZXJuYW1lIjoiS2VuZHJhMzgiLCJpYXQiOjE2NDg5NzEzNjUsImV4cCI6MTY0OTU3MTM2NX0._cRQXvcIGz5j3nZeEuAN_b_ALGdlmBgaaGhXKjX69Xw',
      },
      onSuccess: (resp) {
        onDisplayParticipantslistSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onDisplayParticipantslistError(err);
        if (errCall != null) {
          errCall();
        }
      },
      //requestData: req
    );
  }

  onDisplayParticipantslistSuccess(var response) {
    print(response);
    postParticipantListResp = PostParticipantListResp.fromJson(response);
    if (postParticipantListResp != null) {
      if (postParticipantListResp.data != null) {
        for (var item in postParticipantListResp.data!.data!) {
          var displayParticipantItemModel = HomepageItemModel();
          displayParticipantItemModel.ParticipantId.value =
              item.userId ?? 'null UserId';
          displayParticipantItemModel.ParticipantMeetingId.value =
              item.meetingId ?? 'null MeetingId';
          if (displayParticipantItemModel.ParticipantMeetingId.value
                  .compareTo(Get.find<PrefUtils>().getMeetingIdvalue()) ==
              0) {
            // callDisplayParticipantImage(
            //     displayParticipantItemModel.ParticipantId.value);
            homepageModelObj.value.homepageParticipantsItemList
                .add(displayParticipantItemModel);
          }
        }
      }
    }
    //Get.find<PrefUtils>().setMeetingIdvalue("0");
  }

  void callDisplayParticipantImage(String userid,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().displayParticipantImage(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${Get.find<PrefUtils>().getTokenvalue()}',
        },
        onSuccess: (resp) {
          onCreateDisplayParticipantImageSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateDisplayParticipantImageError(err);
          if (errCall != null) {
            errCall();
          }
        },
        id: userid);
    // requestData: req);
  }

  void onCreateDisplayParticipantImageSuccess(var response) async {
    homepageModelObj.value.homepageParticipantsItemList.clear();
    postUserInfoListResp = PostUserInfoListResp.fromJson(response);

    log('User Name Of Participant=>${postUserInfoListResp.data!.username.toString()}');
    log('User Image Of Participant=>${postUserInfoListResp.data!.userImage.toString()}');
    var displayParticipantItemModel = HomepageItemModel();
    displayParticipantItemModel.ParticipantId.value =
        postUserInfoListResp.data!.userId.toString() ?? 'null ParticipantId';
    displayParticipantItemModel.ParticipantImage.value =
        postUserInfoListResp.data!.userImage.toString() ??
            'null ParticipantImage';
    log('Participant Image->${displayParticipantItemModel.ParticipantImage.value}');
    homepageModelObj.value.homepageParticipantsItemList
        .add(displayParticipantItemModel);
    // homepageModelObj.value.homepageParticipantsItemList[cnt].ParticipantImage
    //     .value = displayParticipantItemModel.ParticipantImage.value;
    log('Count****************************->${homepageModelObj.value.homepageParticipantsItemList.length}');
    log('Cnt****************************->${cnt}');
    cnt++;
  }
}

void onDisplayMeetinglistError(var err) {
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

void onDisplayParticipantslistError(var err) {
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

void onCreateDisplayParticipantImageError(var err) {
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
// void onCreateDisplayUserInfoError(var err) {
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
