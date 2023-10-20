import 'controller/success_message_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessMessageScreen extends GetWidget<SuccessMessageController> {
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(16.00),
                                      top: getVerticalSize(213.00),
                                      right: getHorizontalSize(16.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(60.00),
                                                right:
                                                    getHorizontalSize(59.00)),
                                            child: Container(
                                                height: getSize(94.00),
                                                width: getSize(94.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgCheckcircle,
                                                    fit: BoxFit.fill))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    getVerticalSize(50.00)),
                                            child: Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                               
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              21.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  21.00)),
                                                      child: Text(
                                                          "lbl_happy_meeting"
                                                              .tr,
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign
                                                                  .left,
                                                          style: AppStyle
                                                              .textStyleSofiaPro24
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(24),
                                                                  letterSpacing: 0.18,
                                                                  height: 1.00))),
                                                  Container(
                                                      width:
                                                          getHorizontalSize(
                                                              213.00),
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              6.00)),
                                                      child: Text(
                                                          "msg_you_can_cancel"
                                                              .tr,
                                                          maxLines:
                                                              null,
                                                          textAlign:
                                                              TextAlign
                                                                  .center,
                                                          style: AppStyle.textStyleSofiaPro16.copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              letterSpacing:
                                                                  0.50,
                                                              height:
                                                                  1.50)))
                                                ]))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(16.00),
                                      top: getVerticalSize(256.00),
                                      right: getHorizontalSize(16.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapBtnDone();
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(45.00),
                                          width: getHorizontalSize(343.00),
                                          decoration:
                                              AppDecoration.textStyleSofiaPro14,
                                          child: Text("lbl_done".tr,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .textStyleSofiaPro14
                                                  .copyWith(
                                                      fontSize: getFontSize(14),
                                                      letterSpacing: 0.25,
                                                      height: 1.43)))))
                            ]))))));
  }

  onTapBtnDone() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
