import 'controller/create_new_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateNewScreen extends GetWidget<CreateNewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.black900),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(140.00),
                                      top: getVerticalSize(57.00),
                                      right: getHorizontalSize(139.00)),
                                  child: Text("lbl_create_new".tr.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textStyleSofiaPromedium14
                                          .copyWith(
                                              fontSize: getFontSize(14),
                                              letterSpacing: 1.25,
                                              height: 1.14))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: getVerticalSize(315.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapGroup23();
                                                },
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height:
                                                                  getVerticalSize(
                                                                      73.00),
                                                              width: size.width,
                                                              decoration:
                                                                  AppDecoration
                                                                      .textStyleSofiaProsemibold34,
                                                              child: Text(
                                                                  "lbl_book_space2"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textStyleSofiaProsemibold34
                                                                      .copyWith(
                                                                          fontSize: getFontSize(
                                                                              34),
                                                                          height:
                                                                              1.06)))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  343.00),
                                                          margin: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      16.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      16.00)),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .whiteA700))
                                                    ])),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapGroup24();
                                                },
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height:
                                                                  getVerticalSize(
                                                                      73.00),
                                                              width: size.width,
                                                              decoration:
                                                                  AppDecoration
                                                                      .textStyleSofiaProsemibold34,
                                                              child: Text(
                                                                  "lbl_webinar3"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textStyleSofiaProsemibold34
                                                                      .copyWith(
                                                                          fontSize: getFontSize(
                                                                              34),
                                                                          height:
                                                                              1.06)))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  343.00),
                                                          margin: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      16.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      16.00)),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .whiteA700))
                                                    ])),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapBtnBulletin();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(73.00),
                                                    width: size.width,
                                                    decoration: AppDecoration
                                                        .textStyleSofiaProsemibold34,
                                                    child: Text(
                                                        "lbl_bulletin".tr,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textStyleSofiaProsemibold34
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        34),
                                                                height: 1.06))))
                                          ]))),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(140.00),
                                    top: getVerticalSize(70.00),
                                    right: getHorizontalSize(140.00),
                                    bottom: getVerticalSize(20.00)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      height: getSize(50.00),
                                      width: getSize(50.00),
                                      child: SvgPicture.asset(
                                          ImageConstant.imgGroup19,
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ]))))));
  }

  onTapGroup23() {
    Get.toNamed(AppRoutes.bookSpaceScreen);
  }

  onTapGroup24() {
    Get.toNamed(AppRoutes.bookSpace2Screen);
  }

  onTapBtnBulletin() {
    Get.toNamed(AppRoutes.bookSpace1Screen);
  }
}
