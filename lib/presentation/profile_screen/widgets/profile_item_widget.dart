import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:coruscate/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:coruscate/presentation/profile_screen/controller/profile_controller.dart';
import 'package:coruscate/presentation/profile_screen/models/profile_item_model.dart';
import 'package:coruscate/presentation/profile_screen/profile_screen.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';

class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(this.profilepageItemModelObj);

  ProfilepageItemModel profilepageItemModelObj;

  var controller = Get.find<ProfileController>();
  var homePageController = Get.put(HomepageController());

  //For Date Formatting
  late DateTime dt =
      DateTime.parse(profilepageItemModelObj.UserMeetingDate.toString());
  late String formatedDate = "${dt.year}-${dt.month}-${dt.day}";
  late var finalDateFormat = Jiffy(formatedDate).MMMd;

//For From Time Formatting
  late String fromDateTime =
      '${profilepageItemModelObj.UserMeetingDate} ${profilepageItemModelObj.UserMeetingFromTime}:00';

  late DateTime fromData = DateTime.parse(fromDateTime);
  late String formattedFromTime = DateFormat.jm().format(fromData);

  //For To Time Formatting
  late String toDateTime =
      '${profilepageItemModelObj.UserMeetingDate} ${profilepageItemModelObj.UserMeetingToTime}:00';

  late DateTime toData = DateTime.parse(toDateTime);
  late String formattedToTime = DateFormat.jm().format(toData);
  //Final DateTime Formatted String

  late String finalDisplay =
      '${finalDateFormat} | ${formattedFromTime} - ${formattedToTime}';

  @override
  Widget build(BuildContext context) {
    if (controller.profileModelObj.value.meetingByUserItemList.length != 0) {
      return Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            5.00,
          ),
          bottom: getVerticalSize(
            5.00,
          ),
        ),
        decoration: BoxDecoration(
          color: ColorConstant.gray900,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                  top: getVerticalSize(
                    14.00,
                  ),
                  bottom: getVerticalSize(
                    14.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          10.00,
                        ),
                      ),
                      child: Text(
                        finalDisplay,
                        //"msg_15_nov_2_30".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.textStyleSofiaPro122.copyWith(
                          fontSize: getFontSize(
                            12,
                          ),
                          letterSpacing: 0.40,
                          height: 1.33,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          10.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              122.00,
                            ),
                            margin: EdgeInsets.only(
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Text(
                              //"msg_nural_engine_di".tr,
                              profilepageItemModelObj.UserMeetingTitle
                                  .toString(),
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.textStyleSofiaPromedium201.copyWith(
                                fontSize: getFontSize(
                                  20,
                                ),
                                letterSpacing: 0.15,
                                height: 1.20,
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              159.00,
                            ),
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                6.00,
                              ),
                            ),
                            child: Text(
                              //"msg_lorem_ipsum_is".tr,
                              profilepageItemModelObj.UserMeetingDesc
                                  .toString(),
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStyleSofiaPro123.copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                letterSpacing: 0.40,
                                height: 1.33,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(28.00),
                                width: getHorizontalSize(60.00),
                                decoration: AppDecoration.textStyleSofiaPro126,
                                child: GestureDetector(
                                  onTap: () => AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.QUESTION,
                                    headerAnimationLoop: true,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: 'Discard Event',
                                    desc:
                                        'Are you sure you want to cancel the meeting?',
                                    buttonsTextStyle:
                                        TextStyle(color: Colors.white),
                                    showCloseIcon: true,
                                    btnCancelOnPress: () {
                                      dialog.dismiss();
                                    },
                                    btnCancelColor: Colors.grey,
                                    btnOkOnPress: () {
                                      controller.callDeleteUserMeetinglist(
                                        id: profilepageItemModelObj
                                            .UserMeetingId.toString(),
                                        successCall: _onDeleteUserlistSuccess,
                                        errCall: _onDeleteUserlistError,
                                      );

                                      // Get.toNamed(
                                      //     AppRoutes.successCancelScreen);
                                    },
                                    btnOkText: "Yes",
                                    btnOkColor: Colors.black,
                                  )..show(),
                                  child: Text(
                                    "lbl_cancel".tr,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textStyleSofiaPro126
                                        .copyWith(
                                            fontSize: getFontSize(12),
                                            letterSpacing: 0.40,
                                            height: 1.33),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(28.00),
                                width: getHorizontalSize(43.00),
                                decoration:
                                    AppDecoration.textStyleSofiaProblueA70033,
                                child: GestureDetector(
                                  onTap: () => AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.QUESTION,
                                    headerAnimationLoop: true,
                                    animType: AnimType.BOTTOMSLIDE,
                                    title: 'Revise Event',
                                    desc:
                                        'Are you sure you want to revise the meeting?',
                                    buttonsTextStyle:
                                        TextStyle(color: Colors.white),
                                    showCloseIcon: true,
                                    btnCancelOnPress: () {
                                      dialog.dismiss();
                                    },
                                    btnCancelColor: Colors.grey,
                                    btnOkOnPress: () {
                                      controller.callUserMeetingById(
                                        id: profilepageItemModelObj
                                            .UserMeetingId.toString(),
                                        successCall:
                                            _oncallUserMeetingByIdSuccess,
                                        errCall: _oncallUserMeetingByIdError,
                                      );
                                      // Get.toNamed(
                                      //     AppRoutes.successCancelScreen);
                                    },
                                    btnOkText: "Yes",
                                    btnOkColor: Colors.black,
                                  )..show(),
                                  child: Text("lbl_edit".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textStyleSofiaPro124
                                          .copyWith(
                                              fontSize: getFontSize(12),
                                              letterSpacing: 0.40,
                                              height: 1.33)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    17.00,
                  ),
                ),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/transbubble.gif',
                  image: profilepageItemModelObj.UserMeetingImg.toString(),
                  height: getVerticalSize(163.00),
                  width: getHorizontalSize(145.00),
                  fit: BoxFit.fill,
                ),
                // Image.network(
                //     profilepageItemModelObj.UserMeetingImg.toString(),
                //     //ImageConstant.imgRectangle91,
                //     height: getVerticalSize(
                //       186.00,
                //     ),
                //     width: getHorizontalSize(
                //       177.00,
                //     ),
                //     fit: BoxFit.fill, frameBuilder:
                //         (context, child, frame, wasSynchronouslyLoaded) {
                //   return child;
                // }, loadingBuilder: (context, child, loadingProgress) {
                //   if (loadingProgress == null) {
                //     return child;
                //   } else {
                //     return Center(
                //       child: CircularProgressIndicator(),
                //     );
                //   }
                // }),
              ),
            ),
          ],
        ),
      );
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
      //               // right: getHorizontalSize(
      //               //   33.00,
      //               // ),
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
      //                           profilepageItemModelObj.UserMeetingTitle
      //                               .toString(),
      //                           maxLines: null,
      //                           textAlign: TextAlign.left,
      //                           style: AppStyle.textStyleSofiaPromedium201
      //                               .copyWith(
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
      //                           //"msg_lorem_ipsum_is".tr,
      //                           profilepageItemModelObj.UserMeetingDesc
      //                               .toString(),
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
    } else {
      return Container(
        child: Text(
          "No My List",
          style: TextStyle(color: Colors.red),
        ),
      );
    }
  }

  void _onDeleteUserlistSuccess() async {
    controller.callDisplayUserMeetinglist();
    homePageController.callDisplayMeetinglist();
    homePageController.callDisplayParticipantslist();
    await Get.toNamed(AppRoutes.successCancelScreen);
  }

  void _onDeleteUserlistError() {}

  void _oncallUserMeetingByIdSuccess() async {
    // controller.callDisplayUserMeetinglist();
    // homePageController.callDisplayMeetinglist();
    // homePageController.callDisplayParticipantslist();
    // await Get.toNamed(AppRoutes.successCancelScreen);
  }

  void _oncallUserMeetingByIdError() {}
}
