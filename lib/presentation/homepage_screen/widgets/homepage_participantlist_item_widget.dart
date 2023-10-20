import 'dart:developer';

import 'package:coruscate/presentation/homepage_screen/models/homepage_model.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

import '../controller/homepage_controller.dart';
import '../models/homepage_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';

class HomepageParticipantsItemWidget extends StatelessWidget {
  HomepageParticipantsItemWidget(this.homepageItemModelObj);

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

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(
              left: getHorizontalSize(18.00), top: getVerticalSize(20.00)),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Container(
                  child: Text(
                    'Hi',
                    style: TextStyle(color: Colors.red),
                  ),
                );
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisSize: MainAxisSize.max,
                //     children: [
                //       Container()
                // ClipRRect(
                //     borderRadius: BorderRadius.circular(getSize(22.00)),
                //     child: Image.asset(ImageConstant.imgUnsplashao21ym,
                //         height: getSize(44.00),
                //         width: getSize(44.00),
                //         fit: BoxFit.fill)),
                // Padding(
                //     padding:
                //         EdgeInsets.only(left: getHorizontalSize(6.00)),
                //     child: ClipRRect(
                //         borderRadius:
                //             BorderRadius.circular(getSize(22.00)),
                //         child: Image.asset(
                //             ImageConstant.imgUnsplashttsrji,
                //             height: getSize(44.00),
                //             width: getSize(44.00),
                //             fit: BoxFit.fill))),
                // Padding(
                //     padding:
                //         EdgeInsets.only(left: getHorizontalSize(6.00)),
                //     child: ClipRRect(
                //         borderRadius:
                //             BorderRadius.circular(getSize(22.00)),
                //         child: Image.asset(
                //             ImageConstant.imgUnsplash4yv84v,
                //             height: getSize(44.00),
                //             width: getSize(44.00),
                //             fit: BoxFit.fill))),
                // Padding(
                //     padding:
                //         EdgeInsets.only(left: getHorizontalSize(6.00)),
                //     child: ClipRRect(
                //         borderRadius:
                //             BorderRadius.circular(getSize(22.00)),
                //         child: Image.asset(
                //             ImageConstant.imgUnsplashd6t70k,
                //             height: getSize(44.00),
                //             width: getSize(44.00),
                //             fit: BoxFit.fill))),
                // Padding(
                //     padding:
                //         EdgeInsets.only(left: getHorizontalSize(6.00)),
                //     child: ClipRRect(
                //         borderRadius:
                //             BorderRadius.circular(getSize(22.00)),
                //         child: Image.asset(
                //             ImageConstant.imgUnsplashvswy6n,
                //             height: getSize(44.00),
                //             width: getSize(44.00),
                //             fit: BoxFit.fill))),
                // Padding(
                //     padding:
                //         EdgeInsets.only(left: getHorizontalSize(6.00)),
                //     child: ClipRRect(
                //         borderRadius:
                //             BorderRadius.circular(getSize(22.00)),
                //         child: Image.asset(
                //             ImageConstant.imgUnsplashhrpyhc,
                //             height: getSize(44.00),
                //             width: getSize(44.00),
                //             fit: BoxFit.fill))),
                // Padding(
                //     padding:
                //         EdgeInsets.only(left: getHorizontalSize(6.00)),
                //     child: ClipRRect(
                //         borderRadius:
                //             BorderRadius.circular(getSize(22.00)),
                //         child: Image.asset(
                //             ImageConstant.imgUnsplashifgrcq,
                //             height: getSize(44.00),
                //             width: getSize(44.00),
                //             fit: BoxFit.fill))),
                // Padding(
                //     padding:
                //         EdgeInsets.only(left: getHorizontalSize(6.00)),
                //     child: ClipRRect(
                //         borderRadius:
                //             BorderRadius.circular(getSize(22.00)),
                //         child: Image.asset(
                //             ImageConstant.imgUnsplashjs6hwo,
                //             height: getVerticalSize(44.00),
                //             width: getHorizontalSize(7.00),
                //             fit: BoxFit.fill)))
                //]);
              },
            ),
          ),
        ));
    // Align(
    //     alignment: Alignment.center,
    //     child: Container(
    //         margin: EdgeInsets.only(
    //           top: getVerticalSize(
    //             5.00,
    //           ),
    //           bottom: getVerticalSize(
    //             5.00,
    //           ),
    //         ),
    //         decoration: BoxDecoration(
    //             color: ColorConstant.lightGreen200,
    //             borderRadius: BorderRadius.circular(getHorizontalSize(10.00))),
    //         child: Row(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisSize: MainAxisSize.max,
    //             children: [
    //               Padding(
    //                   padding: EdgeInsets.only(
    //                     left: getHorizontalSize(5.00),
    //                     top: getVerticalSize(14.00),
    //                     bottom: getVerticalSize(14.00),
    //                   ),
    //                   child: Column(
    //                       mainAxisSize: MainAxisSize.min,
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       mainAxisAlignment: MainAxisAlignment.start,
    //                       children: [
    //                         Padding(
    //                             padding: EdgeInsets.only(
    //                                 right: getHorizontalSize(10.00)),
    //                             child: Text(finalDisplay,
    //                                 //"msg_15_nov_9_30".tr,
    //                                 overflow: TextOverflow.ellipsis,
    //                                 textAlign: TextAlign.left,
    //                                 style: AppStyle.textStyleSofiaPro12
    //                                     .copyWith(
    //                                         fontSize: getFontSize(12),
    //                                         letterSpacing: 0.40,
    //                                         height: 1.33))),
    //                         Padding(
    //                             padding: EdgeInsets.only(
    //                                 top: getVerticalSize(10.00)),
    //                             child: Column(
    //                                 mainAxisSize: MainAxisSize.min,
    //                                 crossAxisAlignment:
    //                                     CrossAxisAlignment.start,
    //                                 mainAxisAlignment: MainAxisAlignment.start,
    //                                 children: [
    //                                   Container(
    //                                       width: getHorizontalSize(105.00),
    //                                       margin: EdgeInsets.only(
    //                                           right: getHorizontalSize(10.00)),
    //                                       child: Text(
    //                                           //"msg_webflow_discus".tr,
    //                                           homepageItemModelObj.MeetingTitle
    //                                               .toString(),
    //                                           maxLines: null,
    //                                           textAlign: TextAlign.left,
    //                                           style: AppStyle
    //                                               .textStyleSofiaPromedium20
    //                                               .copyWith(
    //                                                   fontSize: getFontSize(20),
    //                                                   letterSpacing: 0.15,
    //                                                   height: 1.20))),
    //                                   Container(
    //                                       width: getHorizontalSize(159.00),
    //                                       margin: EdgeInsets.only(
    //                                           top: getVerticalSize(6.00)),
    //                                       child: Text(
    //                                           homepageItemModelObj.MeetingDesc
    //                                               .toString(),
    //                                           //"msg_lorem_ipsum_is".tr,
    //                                           maxLines: null,
    //                                           textAlign: TextAlign.left,
    //                                           style: AppStyle
    //                                               .textStyleSofiaPro121
    //                                               .copyWith(
    //                                                   fontSize: getFontSize(12),
    //                                                   letterSpacing: 0.40,
    //                                                   height: 1.33)))
    //                                 ]))
    //                       ])),
    //               Padding(
    //                   padding: EdgeInsets.only(left: getHorizontalSize(17.00)),
    //                   child: Image.asset(ImageConstant.imgRectangle9,
    //                       height: getVerticalSize(163.00),
    //                       width: getHorizontalSize(145.00),
    //                       fit: BoxFit.fill))
    //             ])));
  }
}
