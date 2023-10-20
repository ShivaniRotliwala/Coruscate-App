import 'dart:async';
import 'dart:developer';

import 'package:coruscate/presentation/homepage_screen/models/homepage_model.dart';
import 'package:coruscate/presentation/homepage_screen/widgets/homepage_nextmeet_item_widget.dart';
import 'package:coruscate/presentation/homepage_screen/widgets/homepage_participantlist_item_widget.dart';
import 'package:coruscate/presentation/homepage_screen/widgets/homepage_topnextmeet_item_widget.dart';
import 'package:flutter/rendering.dart';

import '../bottom_nav_bar/bottom_nav_bar_screen.dart';

import '../homepage_screen/widgets/homepage_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/homepage_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// var selectedIndex;
// List<PersistentBottomNavBarItem> items = [];
// ValueChanged<int> onItemSelected = 0.obs;

class HomepageScreen extends GetWidget<HomepageController> {
  Timer? countdownTimer;
  late Duration myDuration;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.black900,
      body: Column(children: [
        Expanded(
          child: Container(
            height: getVerticalSize(772.00),
            width: size.width,
            color: ColorConstant.black900,
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.infinity,
                            decoration:
                                BoxDecoration(color: ColorConstant.black900),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(11.00),
                                              bottom: getVerticalSize(11.00)),
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(15.00),
                                                  right:
                                                      getHorizontalSize(16.00)),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    2.00),
                                                            bottom:
                                                                getVerticalSize(
                                                                    2.00)),
                                                        child: Text("lbl_home".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .left,
                                                            style: AppStyle
                                                                .textStyleSofiaPro16
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            16),
                                                                    letterSpacing:
                                                                        0.50,
                                                                    height:
                                                                        1.50))),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                72.00),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: getVerticalSize(
                                                                          2.00),
                                                                      bottom: getVerticalSize(
                                                                          2.00)),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    // child: SvgPicture.asset(
                                                                    //     ImageConstant.imgMagnify,
                                                                    //     fit: BoxFit.fill)
                                                                  )),
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapImgUnsplash7uoMmz();
                                                                  },
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(left: getHorizontalSize(20.00)),
                                                                      child: ClipRRect(
                                                                          borderRadius: BorderRadius.circular(getSize(14.00)),
                                                                          child: Image.network(Get.find<PrefUtils>().getUserImagevalue(),
                                                                              //ImageConstant.imgUnsplash7uommz,
                                                                              height: getSize(28.00),
                                                                              width: getSize(28.00),
                                                                              fit: BoxFit.fill))))
                                                            ]))
                                                  ]))))
                                ])),
                        Expanded(
                            child: SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //Timer
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(18.00),
                                      right: getHorizontalSize(18.00)),
                                  child:
                                      // Column(
                                      //     mainAxisSize: MainAxisSize.min,
                                      //     crossAxisAlignment:
                                      //         CrossAxisAlignment.start,
                                      //     mainAxisAlignment:
                                      //         MainAxisAlignment.start,
                                      //     children: [
                                      // Padding(
                                      //   padding: EdgeInsets.only(
                                      //       left: getHorizontalSize(1.00),
                                      //       right:
                                      //           getHorizontalSize(10.00)),
                                      //   child: Text(
                                      //       "lbl_next_meeting_in"
                                      //           .tr
                                      //           .toUpperCase(),
                                      //       overflow: TextOverflow.ellipsis,
                                      //       textAlign: TextAlign.left,
                                      //       style: AppStyle
                                      //           .textStyleSofiaPromedium10
                                      //           .copyWith(
                                      //               fontSize:
                                      //                   getFontSize(10),
                                      //               letterSpacing: 1.50,
                                      //               height: 1.60)),
                                      // ),
                                      Obx(
                                    () => Container(
                                      child: ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          // itemCount: 3,
                                          itemCount: controller
                                              .homepageModelObj
                                              .value
                                              .homepageTopNextMeetingItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            if (index > 0) {
                                              return Expanded(
                                                  child: SizedBox());
                                            } else {
                                              int time2 = 1;
                                              String s = controller
                                                  .homepageModelObj
                                                  .value
                                                  .homepageTopNextMeetingItemList[
                                                      index]
                                                  .MeetingFromTime
                                                  .toString();
                                              TimeOfDay _startTime = TimeOfDay(
                                                  hour: int.parse(
                                                      s.split(":")[0]),
                                                  minute: int.parse(
                                                      s.split(":")[1]));
                                              // log('StartTime=>${_startTime}');

                                              TimeOfDay nowTime =
                                                  TimeOfDay.now();
                                              //log('Widget Now Time=>${nowTime}');

                                              double _doubleYourTime =
                                                  _startTime.hour.toDouble() +
                                                      (_startTime.minute
                                                              .toDouble() /
                                                          60);
                                              double _doubleNowTime = nowTime
                                                      .hour
                                                      .toDouble() +
                                                  (nowTime.minute.toDouble() /
                                                      60);

                                              double _timeDiff =
                                                  _doubleYourTime -
                                                      _doubleNowTime;

                                              int _hr = _timeDiff.truncate();
                                              double _minute = (_timeDiff -
                                                      _timeDiff.truncate()) *
                                                  60;
                                              int min = _minute.toInt();
                                              HomepageItemModel model = controller
                                                      .homepageModelObj
                                                      .value
                                                      .homepageTopNextMeetingItemList[
                                                  index];
                                              // controller.myDuration = Duration(
                                              //     hours: _hr, minutes: min);
                                              // //controller.topNextTimer(_hr, min);
                                              // // controller.stopTimer();
                                              // controller.startTimer();

                                              myDuration = new Duration(
                                                  hours: _hr, minutes: min);
                                              startTimer();
                                              controller.homepageModelObj.value
                                                      .hourTimer.value =
                                                  int.parse(strDigits(myDuration
                                                      .inHours
                                                      .remainder(24)));
                                              controller.homepageModelObj.value
                                                      .minuteTimer.value =
                                                  int.parse(strDigits(myDuration
                                                      .inMinutes
                                                      .remainder(60)));
                                              controller.homepageModelObj.value
                                                      .secondTimer.value =
                                                  int.parse(strDigits(myDuration
                                                      .inSeconds
                                                      .remainder(60)));
                                              var hours = controller
                                                  .homepageModelObj
                                                  .value
                                                  .hourTimer
                                                  .value;
                                              var minutes = controller
                                                  .homepageModelObj
                                                  .value
                                                  .minuteTimer
                                                  .value;
                                              var seconds = controller
                                                  .homepageModelObj
                                                  .value
                                                  .secondTimer
                                                  .value;
                                              // if (hours == 0 &&
                                              //     minutes == 0 &&
                                              //     seconds == 0) {
                                              //   controller
                                              //       .callDisplayMeetinglist();
                                              //   controller
                                              //       .callDisplayParticipantslist();
                                              //   return SizedBox();
                                              // } else {
                                              //   return Column(
                                              //     mainAxisSize:
                                              //         MainAxisSize.min,
                                              //     crossAxisAlignment:
                                              //         CrossAxisAlignment.start,
                                              //     mainAxisAlignment:
                                              //         MainAxisAlignment.start,
                                              //     children: [
                                              //       Padding(
                                              //         padding: EdgeInsets.only(
                                              //             left:
                                              //                 getHorizontalSize(
                                              //                     1.00),
                                              //             right:
                                              //                 getHorizontalSize(
                                              //                     10.00)),
                                              //         child: Text(
                                              //             "lbl_next_meeting_in"
                                              //                 .tr
                                              //                 .toUpperCase(),
                                              //             overflow: TextOverflow
                                              //                 .ellipsis,
                                              //             textAlign:
                                              //                 TextAlign.left,
                                              //             style: AppStyle
                                              //                 .textStyleSofiaPromedium10
                                              //                 .copyWith(
                                              //                     fontSize:
                                              //                         getFontSize(
                                              //                             10),
                                              //                     letterSpacing:
                                              //                         1.50,
                                              //                     height:
                                              //                         1.60)),
                                              //       ),
                                              //       Padding(
                                              //         padding: EdgeInsets.only(
                                              //             top: getVerticalSize(
                                              //                 8.00)),
                                              //         child: Text(
                                              //             '$hours:$minutes:$seconds',
                                              //             //finalTimer,
                                              //             //"lbl_04_50_01".tr,
                                              //             overflow: TextOverflow
                                              //                 .ellipsis,
                                              //             textAlign:
                                              //                 TextAlign.left,
                                              //             style: AppStyle
                                              //                 .textStyleSofiaPro34
                                              //                 .copyWith(
                                              //                     fontSize:
                                              //                         getFontSize(
                                              //                             34),
                                              //                     height:
                                              //                         1.06)),
                                              //       ),
                                              //     ],
                                              //   );
                                              // }
                                              var hrseconds = _hr * 3600;
                                              var minseconds = min * 60;
                                              var finalDuration =
                                                  hrseconds + minseconds;
                                              log('FinalDuration=>${finalDuration}');
                                              int endTime = DateTime.now()
                                                      .millisecondsSinceEpoch +
                                                  1000 * finalDuration;
                                              log('EndTime=>${endTime}');
                                              return HomepageTopNextItemWidget(
                                                  model,
                                                  _hr,
                                                  min,
                                                  endTime,
                                                  finalDuration);
                                            }
                                          }),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: EdgeInsets.only(
                                  //       top: getVerticalSize(8.00)),
                                  //   child: Text("lbl_04_50_01".tr,
                                  //       overflow: TextOverflow.ellipsis,
                                  //       textAlign: TextAlign.left,
                                  //       style: AppStyle
                                  //           .textStyleSofiaPro34
                                  //           .copyWith(
                                  //               fontSize:
                                  //                   getFontSize(34),
                                  //               height: 1.06)),
                                  // )
                                  //]),
                                ),
                                //NextMeeting
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(17.00),
                                        top: getVerticalSize(10.00),
                                        right: getHorizontalSize(17.00)),
                                    child: Obx(
                                      () => Container(
                                        child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            // itemCount: 3,
                                            itemCount: controller
                                                .homepageModelObj
                                                .value
                                                .homepageTopNextMeetingItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              if (index > 0) {
                                                return Expanded(
                                                    child: SizedBox());
                                              } else {
                                                HomepageItemModel model = controller
                                                        .homepageModelObj
                                                        .value
                                                        .homepageTopNextMeetingItemList[
                                                    index];
                                                return HomepageNextItemWidget(
                                                    model);
                                              }
                                            }),
                                      ),
                                    ),
                                  ),
                                ),
                                //Participants
                                // Align(
                                //     alignment: Alignment.topLeft,
                                //     child: Padding(
                                //       padding: EdgeInsets.only(
                                //           left: getHorizontalSize(18.00),
                                //           top: getVerticalSize(20.00)),
                                //       child: Text(
                                //         "Participants List",
                                //         style: AppStyle.textStyleSofiaPro16
                                //             .copyWith(
                                //                 fontSize: getFontSize(13),
                                //                 letterSpacing: 0.15,
                                //                 height: 1.50),
                                //       ),
                                //     )),
                                // Obx(
                                //   () => ListView.builder(
                                //       physics: NeverScrollableScrollPhysics(),
                                //       shrinkWrap: true,
                                //       // itemCount: 3,
                                //       itemCount: controller
                                //           .homepageModelObj
                                //           .value
                                //           .homepageTopNextMeetingItemList
                                //           .length,
                                //       itemBuilder: (context, index) {
                                //         if (index > 0) {
                                //           return Expanded(child: SizedBox());
                                //         } else {
                                //           HomepageItemModel model = controller
                                //                   .homepageModelObj
                                //                   .value
                                //                   .homepageTopNextMeetingItemList[
                                //               index];
                                //           return HomepageParticipantsItemWidget(
                                //               model);
                                //         }
                                //       }),
                                // ),

                                Obx(
                                  () => Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(18.00),
                                          top: getVerticalSize(20.00)),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 50,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: controller
                                              .homepageModelObj
                                              .value
                                              .homepageParticipantsItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(6.00)),
                                              child: Text(
                                                '${controller.homepageModelObj.value.homepageParticipantsItemList[index].ParticipantId}',
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                              // ClipRRect(
                                              //     borderRadius:
                                              //         BorderRadius.circular(
                                              //             getSize(20.00)),
                                              //     child: Image.network(
                                              //         controller
                                              //             .homepageModelObj
                                              //             .value
                                              //             .homepageParticipantsItemList[
                                              //                 index]
                                              //             .ParticipantImage
                                              //             .toString(),
                                              //         height:
                                              //             getSize(44.00),
                                              //         width: getSize(44.00),
                                              //         fit: BoxFit.fill)),
                                            );
                                            // Padding(
                                            //   padding: EdgeInsets.only(
                                            //       left: getHorizontalSize(
                                            //           6.00)),
                                            //   child: ClipRRect(
                                            //     borderRadius:
                                            //         BorderRadius.circular(
                                            //             getSize(22.00)),
                                            //     child: Image.asset(
                                            //         ImageConstant
                                            //             .imgUnsplashttsrji,
                                            //         height:
                                            //             getSize(44.00),
                                            //         width: getSize(44.00),
                                            //         fit: BoxFit.fill),
                                            //   ),
                                            // ),
                                            // Padding(
                                            //   padding: EdgeInsets.only(
                                            //       left: getHorizontalSize(
                                            //           6.00)),
                                            //   child: ClipRRect(
                                            //     borderRadius:
                                            //         BorderRadius.circular(
                                            //             getSize(22.00)),
                                            //     child: Image.asset(
                                            //         ImageConstant
                                            //             .imgUnsplash4yv84v,
                                            //         height:
                                            //             getSize(44.00),
                                            //         width: getSize(44.00),
                                            //         fit: BoxFit.fill),
                                            //   ),
                                            // ),
                                            // Padding(
                                            //   padding: EdgeInsets.only(
                                            //       left: getHorizontalSize(
                                            //           6.00)),
                                            //   child: ClipRRect(
                                            //     borderRadius:
                                            //         BorderRadius.circular(
                                            //             getSize(22.00)),
                                            //     child: Image.asset(
                                            //         ImageConstant
                                            //             .imgUnsplashd6t70k,
                                            //         height:
                                            //             getSize(44.00),
                                            //         width: getSize(44.00),
                                            //         fit: BoxFit.fill),
                                            //   ),
                                            // ),
                                            // Padding(
                                            //   padding: EdgeInsets.only(
                                            //       left: getHorizontalSize(
                                            //           6.00)),
                                            //   child: ClipRRect(
                                            //     borderRadius:
                                            //         BorderRadius.circular(
                                            //             getSize(22.00)),
                                            //     child: Image.asset(
                                            //         ImageConstant
                                            //             .imgUnsplashvswy6n,
                                            //         height:
                                            //             getSize(44.00),
                                            //         width: getSize(44.00),
                                            //         fit: BoxFit.fill),
                                            //   ),
                                            // ),
                                            // Padding(
                                            //   padding: EdgeInsets.only(
                                            //       left: getHorizontalSize(
                                            //           6.00)),
                                            //   child: ClipRRect(
                                            //     borderRadius:
                                            //         BorderRadius.circular(
                                            //             getSize(22.00)),
                                            //     child: Image.asset(
                                            //         ImageConstant
                                            //             .imgUnsplashhrpyhc,
                                            //         height:
                                            //             getSize(44.00),
                                            //         width: getSize(44.00),
                                            //         fit: BoxFit.fill),
                                            //   ),
                                            // ),
                                            // Padding(
                                            //   padding: EdgeInsets.only(
                                            //       left: getHorizontalSize(
                                            //           6.00)),
                                            //   child: ClipRRect(
                                            //     borderRadius:
                                            //         BorderRadius.circular(
                                            //             getSize(22.00)),
                                            //     child: Image.asset(
                                            //         ImageConstant
                                            //             .imgUnsplashifgrcq,
                                            //         height:
                                            //             getSize(44.00),
                                            //         width: getSize(44.00),
                                            //         fit: BoxFit.fill),
                                            //   ),
                                            // ),
                                            // Padding(
                                            //   padding: EdgeInsets.only(
                                            //       left: getHorizontalSize(
                                            //           6.00)),
                                            //   child: ClipRRect(
                                            //     borderRadius:
                                            //         BorderRadius.circular(
                                            //             getSize(22.00)),
                                            //     child: Image.asset(
                                            //         ImageConstant
                                            //             .imgUnsplashjs6hwo,
                                            //         height:
                                            //             getVerticalSize(
                                            //                 44.00),
                                            //         width:
                                            //             getHorizontalSize(
                                            //                 7.00),
                                            //         fit: BoxFit.fill),
                                            //   ),
                                            // )
                                            //]);
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //Upcoming
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(18.00),
                                        // top: getVerticalSize(46.00),
                                        right: getHorizontalSize(18.00)),
                                    child: Text("lbl_upcoming".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.textStyleSofiaPro16
                                            .copyWith(
                                                fontSize: getFontSize(16),
                                                letterSpacing: 0.15,
                                                height: 1.50))),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(17.00),
                                        top: getVerticalSize(10.00),
                                        right: getHorizontalSize(17.00)),
                                    child: Obx(
                                      () => Container(
                                        child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            // itemCount: 3,
                                            itemCount: controller
                                                .homepageModelObj
                                                .value
                                                .homepageUpcomingItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              HomepageItemModel model = controller
                                                      .homepageModelObj
                                                      .value
                                                      .homepageUpcomingItemList[
                                                  index];
                                              return HomepageItemWidget(model);
                                            }),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ))
                      ])),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      height: getSize(50.00),
                      width: getSize(50.00),
                      margin: EdgeInsets.only(
                          left: getHorizontalSize(17.00),
                          top: getVerticalSize(83.00),
                          right: getHorizontalSize(17.00),
                          bottom: getVerticalSize(10.00)),
                      child: FloatingActionButton(
                          backgroundColor: ColorConstant.indigoA200,
                          onPressed: () {
                            Get.toNamed(AppRoutes.createNewScreen);
                            //callCreateUserlist();
                          },
                          child: Container(
                              height: getVerticalSize(25.00),
                              width: getHorizontalSize(25.00),
                              child:
                                  SvgPicture.asset(ImageConstant.imgGroup2)))))
            ]),
          ),
        ),
        // Container(
        //     height: getVerticalSize(73.00),
        //     width: size.width,
        //     color: ColorConstant.gray900,
        //     child: Stack(children: [
        //       Align(
        //           alignment: Alignment.topCenter,
        //           child: Padding(
        //               padding: EdgeInsets.only(
        //                   top: getVerticalSize(8.00),
        //                   bottom: getVerticalSize(10.00)),
        //               child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisSize: MainAxisSize.max,
        //                   children: [
        //                     Column(
        //                         mainAxisSize: MainAxisSize.min,
        //                         crossAxisAlignment: CrossAxisAlignment.start,
        //                         mainAxisAlignment: MainAxisAlignment.start,
        //                         children: [
        //                           Align(
        //                               alignment: Alignment.center,
        //                               child: Padding(
        //                                   padding: EdgeInsets.only(
        //                                       left: getHorizontalSize(5.00),
        //                                       right: getHorizontalSize(6.00)),
        //                                   child: Container(
        //                                       height: getSize(24.00),
        //                                       width: getSize(24.00),
        //                                       child: SvgPicture.asset(
        //                                           ImageConstant.imgHome,
        //                                           fit: BoxFit.fill)))),
        //                           Padding(
        //                               padding: EdgeInsets.only(
        //                                   top: getVerticalSize(2.00)),
        //                               child: GestureDetector(
        //                                 onTap: () => print("Home Tapped"),
        //                                 //  Get.toNamed(
        //                                 //     AppRoutes.homepageScreen),
        //                                 child: Text("lbl_home".tr.toUpperCase(),
        //                                     overflow: TextOverflow.ellipsis,
        //                                     textAlign: TextAlign.left,
        //                                     style: AppStyle
        //                                         .textStyleSofiaPromedium10
        //                                         .copyWith(
        //                                             fontSize: getFontSize(10),
        //                                             letterSpacing: 1.50,
        //                                             height: 1.60)),
        //                               ))
        //                         ]),
        //                     Column(
        //                         mainAxisSize: MainAxisSize.min,
        //                         crossAxisAlignment: CrossAxisAlignment.center,
        //                         mainAxisAlignment: MainAxisAlignment.start,
        //                         children: [
        //                           Padding(
        //                               padding: EdgeInsets.only(
        //                                   left: getHorizontalSize(14.00),
        //                                   right: getHorizontalSize(14.00)),
        //                               child: Container(
        //                                   height: getSize(24.00),
        //                                   width: getSize(24.00),
        //                                   child: GestureDetector(
        //                                     onTap: () => Get.toNamed(
        //                                         AppRoutes.webinar3Screen),
        //                                     child: SvgPicture.asset(
        //                                         ImageConstant.imgAirplay,
        //                                         fit: BoxFit.fill),
        //                                   ))),
        //                           Align(
        //                               alignment: Alignment.centerLeft,
        //                               child: Padding(
        //                                   padding: EdgeInsets.only(
        //                                       top: getVerticalSize(2.00)),
        //                                   child: Text(
        //                                       "lbl_webinar".tr.toUpperCase(),
        //                                       overflow: TextOverflow.ellipsis,
        //                                       textAlign: TextAlign.left,
        //                                       style: AppStyle
        //                                           .textStyleSofiaPromedium10
        //                                           .copyWith(
        //                                               fontSize: getFontSize(10),
        //                                               letterSpacing: 1.50,
        //                                               height: 1.60))))
        //                         ]),
        //                     Column(
        //                         mainAxisSize: MainAxisSize.min,
        //                         crossAxisAlignment: CrossAxisAlignment.center,
        //                         mainAxisAlignment: MainAxisAlignment.start,
        //                         children: [
        //                           Padding(
        //                               padding: EdgeInsets.only(
        //                                   left: getHorizontalSize(6.00),
        //                                   right: getHorizontalSize(7.00)),
        //                               child: Container(
        //                                   height: getSize(24.00),
        //                                   width: getSize(24.00),
        //                                   child: GestureDetector(
        //                                     // onTap: () => Get.toNamed(
        //                                     //     AppRoutes.webinar1Screen),
        //                                     child: SvgPicture.asset(
        //                                         ImageConstant.imgBookopen,
        //                                         fit: BoxFit.fill),
        //                                   ))),
        //                           Align(
        //                               alignment: Alignment.centerLeft,
        //                               child: Padding(
        //                                   padding: EdgeInsets.only(
        //                                       top: getVerticalSize(2.00)),
        //                                   child: Text(
        //                                       "lbl_learn".tr.toUpperCase(),
        //                                       overflow: TextOverflow.ellipsis,
        //                                       textAlign: TextAlign.left,
        //                                       style: AppStyle
        //                                           .textStyleSofiaPromedium10
        //                                           .copyWith(
        //                                               fontSize: getFontSize(10),
        //                                               letterSpacing: 1.50,
        //                                               height: 1.60))))
        //                         ]),
        //                     Column(
        //                         mainAxisSize: MainAxisSize.min,
        //                         crossAxisAlignment: CrossAxisAlignment.center,
        //                         mainAxisAlignment: MainAxisAlignment.start,
        //                         children: [
        //                           Padding(
        //                               padding: EdgeInsets.only(
        //                                   left: getHorizontalSize(11.00),
        //                                   right: getHorizontalSize(11.00)),
        //                               child: Container(
        //                                   height: getSize(24.00),
        //                                   width: getSize(24.00),
        //                                   child: SvgPicture.asset(
        //                                       ImageConstant.imgLink,
        //                                       fit: BoxFit.fill))),
        //                           Align(
        //                               alignment: Alignment.centerLeft,
        //                               child: Padding(
        //                                   padding: EdgeInsets.only(
        //                                       top: getVerticalSize(2.00)),
        //                                   child: Text(
        //                                       "lbl_tie_ups".tr.toUpperCase(),
        //                                       overflow: TextOverflow.ellipsis,
        //                                       textAlign: TextAlign.left,
        //                                       style: AppStyle
        //                                           .textStyleSofiaPromedium10
        //                                           .copyWith(
        //                                               fontSize: getFontSize(10),
        //                                               letterSpacing: 1.50,
        //                                               height: 1.60))))
        //                         ])
        //                   ])))
        //     ]))
      ]),
      bottomNavigationBar: BottomNav(),
      // floatingActionButton: FloatingButtonScreen(),
    ));
  }

  onTapImgUnsplash7uoMmz() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  void startTimer() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (_) async {
      await setCountDown();
    });
  }

  setCountDown() {
    final reduceSecondsBy = 1;

    controller.homepageModelObj.value.secondTimer.value =
        (myDuration.inSeconds - reduceSecondsBy);
    controller.homepageModelObj.value.secondTimer < 0
        ? countdownTimer!.cancel()
        : myDuration = Duration(
            seconds: controller.homepageModelObj.value.secondTimer.toInt());
    //seconds
    // < 0
    //     ? countdownTimer!.cancel()
    //     : myDuration = Duration(seconds: seconds);
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');
}
