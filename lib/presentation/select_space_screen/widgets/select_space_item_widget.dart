import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:coruscate/data/models/meetingListModel/post_meetinglist_req.dart';
import 'package:coruscate/presentation/book_space_screen/controller/book_space_controller.dart';
import 'package:coruscate/presentation/homepage_screen/controller/homepage_controller.dart';
import 'package:coruscate/presentation/profile_screen/controller/profile_controller.dart';

import '../controller/select_space_controller.dart';
import '../models/select_space_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';

class SelectSpaceItemWidget extends StatelessWidget {
  SelectSpaceItemWidget(this.selectSpaceItemModelObj);

  SelectSpaceItemModel selectSpaceItemModelObj;

  //BookSpaceController bscontroller = BookSpaceController();
  var bookSpacecontroller = Get.find<BookSpaceController>();
  var controller = Get.find<SelectSpaceController>();
  var homePageController = Get.put(HomepageController());
  var profilePageController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapGroup(context);
      },
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
                  36.00,
                ),
                bottom: getVerticalSize(
                  36.00,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      110.00,
                    ),
                    // margin: EdgeInsets.only(
                    //   right: getHorizontalSize(
                    //     4.00,
                    //   ),
                    // ),
                    child: Text(
                      //"lbl_library_space".tr,
                      selectSpaceItemModelObj.spaceName.toString(),
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.textStyleSofiaPromedium201.copyWith(
                        fontSize: getFontSize(
                          20,
                        ),
                        letterSpacing: 0.15,
                        height: 1.20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        4.00,
                      ),
                    ),
                    child: Text(
                      // "lbl_capacity_2_3".tr,
                      selectSpaceItemModelObj.spaceCapacity.toString(),
                      overflow: TextOverflow.ellipsis,
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
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    44.00,
                  ),
                ),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/transbubble.gif',
                  image: selectSpaceItemModelObj.spaceImage.toString(),
                  height: getVerticalSize(163.00),
                  width: getHorizontalSize(145.00),
                  fit: BoxFit.fill,
                ),
                // Image.network(
                //     //ImageConstant.imgRectangle94,
                //     selectSpaceItemModelObj.spaceImage.toString(),
                //     height: getVerticalSize(
                //       140.00,
                //     ),
                //     width: getHorizontalSize(
                //       194.00,
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
      ),
    );
  }

  onTapGroup(context) {
    log(selectSpaceItemModelObj.spaceId.toString());
    log('After Date=>${bookSpacecontroller.controllerDate.value}');
    log('After From Time=>${bookSpacecontroller.controllerFromTime.value}');
    log('After To Time=>${bookSpacecontroller.controllerToTime.value}');
    log('After Total Member=>${bookSpacecontroller.controllerMember.value}');
    log('After Meeting Desc=>${bookSpacecontroller.controllerDesc.value}');
    // log(selectSpaceItemModelObj.dateFromPrev.toString());
    // log(selectSpaceItemModelObj.timeFromPrev.toString());
    // log('date=>${bscontroller.dateController.text}');
    // log('time From=>${bscontroller.timeFromController.text}');
    // log('time To=>${bscontroller.timeToController.text}');
    // log('total Capa=>${bscontroller.totalMemberController.text}');

    // log('date=>${postMeetingListReq.meetingDate}');
    // log('time From=>${postMeetingListReq.meetingFrom}');
    // log('time To=>${bscontroller.postMeetingListReq.meetingTo}');
    // log('total Capa=>${bscontroller.postMeetingListReq.expectedMember}');
    print("hello");
    // ignore: avoid_single_cascade_in_expression_statements
    AwesomeDialog(
      context: context,
      dialogType: DialogType.QUESTION,
      headerAnimationLoop: true,
      btnOkColor: ColorConstant.black900,
      btnOkText: "Confirm",
      btnCancelColor: ColorConstant.gray600,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Book Space',
      desc: 'Are you sure, You want to Book space ',
      buttonsTextStyle: TextStyle(color: Colors.white),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        PostMeetingListReq postMeetingListReq = PostMeetingListReq();
        postMeetingListReq.spaceId = selectSpaceItemModelObj.spaceId.toString();
        postMeetingListReq.meetingImage =
            selectSpaceItemModelObj.spaceImage.toString();
        postMeetingListReq.meetingDate =
            bookSpacecontroller.controllerDate.value;
        postMeetingListReq.meetingFrom =
            bookSpacecontroller.controllerFromTime.value;
        postMeetingListReq.meetingTo =
            bookSpacecontroller.controllerToTime.value;
        postMeetingListReq.expectedMember =
            int.parse(bookSpacecontroller.controllerMember.value);
        postMeetingListReq.userId = Get.find<PrefUtils>().getUserid();
        postMeetingListReq.meetingId = 101;
        postMeetingListReq.meetingTitle =
            bookSpacecontroller.controllerTitle.value;
        postMeetingListReq.meetingDescription =
            bookSpacecontroller.controllerDesc.value;
        if (Get.find<PrefUtils>().getMeetingIdForEditvalue().compareTo("0") ==
            0) {
          controller.callCreateMeetinglist(
            postMeetingListReq.toJson(),
            successCall: _onCreateMeetinglistSuccess,
            errCall: _onCreateMeetinglistError,
          );
        } else {
          controller.callUpdateUserMeetingById(
            req: postMeetingListReq.toJson(),
            successCall: _onCreateMeetingUpdatelistSuccess,
            errCall: _onCreateMeetingUpdatelistError,
            id: Get.find<PrefUtils>().getMeetingIdForEditvalue(),
          );
        }
      },
    )..show();
  }

  void _onCreateMeetinglistSuccess() async {
    homePageController.callDisplayMeetinglist();
    profilePageController.callDisplayUserMeetinglist();
    homePageController.callDisplayParticipantslist();
    bookSpacecontroller.meetingTitleController.clear();
    bookSpacecontroller.dateController.clear();
    bookSpacecontroller.timeFromController.clear();
    bookSpacecontroller.timeToController.clear();
    bookSpacecontroller.totalMemberController.clear();
    bookSpacecontroller.meetingDescController.clear();
    await Get.toNamed(AppRoutes.successMessageScreen);
  }

  void _onCreateMeetinglistError() {}

  void _onCreateMeetingUpdatelistSuccess() async {
    homePageController.callDisplayMeetinglist();
    profilePageController.callDisplayUserMeetinglist();
    homePageController.callDisplayParticipantslist();
    bookSpacecontroller.meetingTitleController.clear();
    bookSpacecontroller.dateController.clear();
    bookSpacecontroller.timeFromController.clear();
    bookSpacecontroller.timeToController.clear();
    bookSpacecontroller.totalMemberController.clear();
    bookSpacecontroller.meetingDescController.clear();
    Get.find<PrefUtils>().setMeetingIdForEditvalue("0");
    await Get.toNamed(AppRoutes.successMessageScreen);
  }

  void _onCreateMeetingUpdatelistError() {}
}
