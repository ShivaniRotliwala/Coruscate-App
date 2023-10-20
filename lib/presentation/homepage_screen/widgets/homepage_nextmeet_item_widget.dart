import 'dart:developer';

import 'package:coruscate/presentation/homepage_screen/models/homepage_model.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

import '../controller/homepage_controller.dart';
import '../models/homepage_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';

class HomepageNextItemWidget extends StatelessWidget {
  HomepageNextItemWidget(this.homepageItemModelObj);

  HomepageItemModel homepageItemModelObj;
  HomepageModel homePageModelObj = HomepageModel();

  var controller = Get.find<HomepageController>();

  //For Date Formatting
  late DateTime dt =
      DateTime.parse(homepageItemModelObj.MeetingDate.toString());
  late String formatedDate = "${dt.year}-${dt.month}-${dt.day}";
  late var finalDateFormat = Jiffy(formatedDate).MMMd;

//For From Time Formatting
  late String fromDateTime =
      '${homepageItemModelObj.MeetingDate} ${homepageItemModelObj.MeetingFromTime}:00';

  late DateTime fromData = DateTime.parse(fromDateTime);
  late String formattedFromTime = DateFormat.jm().format(fromData);

  //For To Time Formatting
  late String toDateTime =
      '${homepageItemModelObj.MeetingDate} ${homepageItemModelObj.MeetingToTime}:00';

  late DateTime toData = DateTime.parse(toDateTime);
  late String formattedToTime = DateFormat.jm().format(toData);

  //Final DateTime Formatted String
  late String finalDisplay =
      '${finalDateFormat} | ${formattedFromTime} - ${formattedToTime}';

  //For NextMeeting
  // String s = homepageItemModelObj.MeetingToTime.toString();
  //           TimeOfDay _startTime = TimeOfDay(
  //               hour: int.parse(s.split(":")[0]),
  //               minute: int.parse(s.split(":")[1]));
  //          // log('StartTime=>${_startTime}');

  //           TimeOfDay nowTime = TimeOfDay.now();
  //           log('Now Time=>${nowTime}');

  //           double _doubleYourTime = _startTime.hour.toDouble() +
  //               (_startTime.minute.toDouble() / 60);
  //           double _doubleNowTime =
  //               nowTime.hour.toDouble() + (nowTime.minute.toDouble() / 60);

  //           double _timeDiff = _doubleYourTime - _doubleNowTime;

  //           int _hr = _timeDiff.truncate();
  //           double _minute = (_timeDiff - _timeDiff.truncate()) * 60;
  //           int min = _minute.toInt();

  //           log('Here your Happy ${_hr} Hour and also ${min} min');
  //           if (_hr < 2) {
  //             homepageModelObj.value.homepageNextMeetingItemList
  //                 .add(displayMeetingItemModel);
  //             log('Next Meeting=>${homepageModelObj.value.homepageNextMeetingItemList.length.toString()}');
  //           }

  @override
  Widget build(BuildContext context) {
    // String s = homepageItemModelObj.MeetingFromTime.toString();
    // TimeOfDay _startTime = TimeOfDay(
    //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
    // // log('StartTime=>${_startTime}');

    // TimeOfDay nowTime = TimeOfDay.now();
    // log('Widget Now Time=>${nowTime}');

    // double _doubleYourTime =
    //     _startTime.hour.toDouble() + (_startTime.minute.toDouble() / 60);
    // double _doubleNowTime =
    //     nowTime.hour.toDouble() + (nowTime.minute.toDouble() / 60);

    // double _timeDiff = _doubleYourTime - _doubleNowTime;

    // int _hr = _timeDiff.truncate();
    // double _minute = (_timeDiff - _timeDiff.truncate()) * 60;
    // int min = _minute.toInt();

    // log('(Widget)Here your Happy ${_hr} Hour and also ${min} min');
    // if (_hr > 0 || min > 0) {
    // homePageModelObj.homepageTopNextMeetingItemList.add(homepageItemModelObj);
    // homePageModelObj.homepageNextMeetingItemList.sort(
    //     (a, b) => a.MeetingFromTime.compareTo(b.MeetingFromTime.toString()));
    // log('Sort by Name: ' +
    //     homePageModelObj.homepageNextMeetingItemList.toString());

    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.only(
              top: getVerticalSize(
                5.00,
              ),
              bottom: getVerticalSize(
                5.00,
              ),
            ),
            decoration: BoxDecoration(
                color: ColorConstant.lightGreen200,
                borderRadius: BorderRadius.circular(getHorizontalSize(10.00))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(5.00),
                        top: getVerticalSize(14.00),
                        bottom: getVerticalSize(14.00),
                      ),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    right: getHorizontalSize(10.00)),
                                child: Text(finalDisplay,
                                    //"msg_15_nov_9_30".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textStyleSofiaPro12
                                        .copyWith(
                                            fontSize: getFontSize(12),
                                            letterSpacing: 0.40,
                                            height: 1.33))),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: getVerticalSize(10.00)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(105.00),
                                          margin: EdgeInsets.only(
                                              right: getHorizontalSize(10.00)),
                                          child: Text(
                                              //"msg_webflow_discus".tr,
                                              homepageItemModelObj.MeetingTitle
                                                  .toString(),
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textStyleSofiaPromedium20
                                                  .copyWith(
                                                      fontSize: getFontSize(20),
                                                      letterSpacing: 0.15,
                                                      height: 1.20))),
                                      Container(
                                          width: getHorizontalSize(159.00),
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(6.00)),
                                          child: Text(
                                              homepageItemModelObj.MeetingDesc
                                                  .toString(),
                                              //"msg_lorem_ipsum_is".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textStyleSofiaPro121
                                                  .copyWith(
                                                      fontSize: getFontSize(12),
                                                      letterSpacing: 0.40,
                                                      height: 1.33)))
                                    ]))
                          ])),
                  Padding(
                    padding: EdgeInsets.only(left: getHorizontalSize(17.00)),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/transbubble.gif',
                      image: homepageItemModelObj.MeetingImg.toString(),
                      height: getVerticalSize(163.00),
                      width: getHorizontalSize(145.00),
                      fit: BoxFit.fill,
                    ),
                    //     Image.network(
                    //         //ImageConstant.imgRectangle9,
                    //         homepageItemModelObj.MeetingImg.toString(),
                    //         height: getVerticalSize(163.00),
                    //         width: getHorizontalSize(145.00),
                    //         fit: BoxFit.fill, frameBuilder: (context, child,
                    //             frame, wasSynchronouslyLoaded) {
                    //   return child;
                    // }, loadingBuilder: (context, child, loadingProgress) {
                    //   if (loadingProgress == null) {
                    //     return child;
                    //   }
                    //   return Center(
                    //     child: CircularProgressIndicator(),
                    //   );
                    // }),
                  )
                ])));

    // } else {
    //   // homePageModelObj.homepageNextMeetingItemList.remove(homepageItemModelObj);

    //   //log('After Delete Next Meeting=>${homePageModelObj.homepageNextMeetingItemList.length.toString()}');
    //   return SizedBox();
    // }

    // Align(
    //   alignment: Alignment.center,
    //   child: Container(
    //     margin: EdgeInsets.only(
    //       top: getVerticalSize(
    //         5.00,
    //       ),
    //       bottom: getVerticalSize(
    //         5.00,
    //       ),
    //     ),
    //     decoration: BoxDecoration(
    //       color: ColorConstant.gray900,
    //       borderRadius: BorderRadius.circular(
    //         getHorizontalSize(
    //           10.00,
    //         ),
    //       ),
    //     ),
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       mainAxisSize: MainAxisSize.max,
    //       children: [
    //         Padding(
    //             padding: EdgeInsets.only(
    //               left: getHorizontalSize(
    //                 20.00,
    //               ),
    //               top: getVerticalSize(
    //                 14.00,
    //               ),
    //               bottom: getVerticalSize(
    //                 14.00,
    //               ),
    //             ),
    //             child: Column(
    //               mainAxisSize: MainAxisSize.min,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: [
    //                 Padding(
    //                   padding: EdgeInsets.only(
    //                     right: getHorizontalSize(
    //                       10.00,
    //                     ),
    //                   ),
    //                   child: Text(
    //                     //"msg_15_nov_2_30".tr,
    //                     finalDisplay,
    //                     overflow: TextOverflow.ellipsis,
    //                     textAlign: TextAlign.left,
    //                     style: AppStyle.textStyleSofiaPro122.copyWith(
    //                       fontSize: getFontSize(
    //                         12,
    //                       ),
    //                       letterSpacing: 0.40,
    //                       height: 1.33,
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsets.only(
    //                     top: getVerticalSize(
    //                       10.00,
    //                     ),
    //                   ),
    //                   child: Column(
    //                     mainAxisSize: MainAxisSize.min,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     mainAxisAlignment: MainAxisAlignment.start,
    //                     children: [
    //                       Container(
    //                         width: getHorizontalSize(
    //                           122.00,
    //                         ),
    //                         margin: EdgeInsets.only(
    //                           right: getHorizontalSize(
    //                             10.00,
    //                           ),
    //                         ),
    //                         child: Text(
    //                           //"msg_nural_engine_di".tr,
    //                           homepageItemModelObj.MeetingTitle.toString(),
    //                           maxLines: null,
    //                           textAlign: TextAlign.left,
    //                           style:
    //                               AppStyle.textStyleSofiaPromedium201.copyWith(
    //                             fontSize: getFontSize(
    //                               20,
    //                             ),
    //                             letterSpacing: 0.15,
    //                             height: 1.20,
    //                           ),
    //                         ),
    //                       ),
    //                       Container(
    //                         width: getHorizontalSize(
    //                           159.00,
    //                         ),
    //                         margin: EdgeInsets.only(
    //                           top: getVerticalSize(
    //                             6.00,
    //                           ),
    //                         ),
    //                         child: Text(
    //                           "msg_lorem_ipsum_is".tr,
    //                           maxLines: null,
    //                           textAlign: TextAlign.left,
    //                           style: AppStyle.textStyleSofiaPro123.copyWith(
    //                             fontSize: getFontSize(
    //                               12,
    //                             ),
    //                             letterSpacing: 0.40,
    //                             height: 1.33,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             )),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             left: getHorizontalSize(
    //               17.00,
    //             ),
    //           ),
    //           child: Image.asset(
    //             ImageConstant.imgRectangle91,
    //             height: getVerticalSize(
    //               161.00,
    //             ),
    //             width: getHorizontalSize(
    //               145.00,
    //             ),
    //             fit: BoxFit.fill,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
