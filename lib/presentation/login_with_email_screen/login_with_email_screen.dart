import 'controller/login_with_email_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWithEmailScreen extends GetWidget<LoginWithEmailController> {
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
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: getVerticalSize(16.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        right:
                                                            getHorizontalSize(
                                                                16.00)),
                                                    child: Container(
                                                        height: getSize(24.00),
                                                        width: getSize(24.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgArrowleft,
                                                            fit:
                                                                BoxFit.fill)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            76.00),
                                                        right:
                                                            getHorizontalSize(
                                                                16.00)),
                                                    child: Image.asset(
                                                        ImageConstant.imgImage1,
                                                        height: getSize(300.00),
                                                        width: getSize(300.00),
                                                        fit: BoxFit.fill))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(47.00),
                                                    right: getHorizontalSize(
                                                        16.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(28.00),
                                                    width: getHorizontalSize(
                                                        343.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .emailController,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "lbl_email".tr,
                                                            hintStyle: AppStyle.textStyleSofiaPro142.copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14.0),
                                                                color: ColorConstant
                                                                    .whiteA700),
                                                            enabledBorder:
                                                                UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#ffffffff"), width: 1)),
                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#ffffffff"), width: 1)),
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(top: getVerticalSize(3.00), bottom: getVerticalSize(11.00))),
                                                        style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(14.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w400)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    top: getVerticalSize(40.00),
                                                    right: getHorizontalSize(
                                                        16.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(28.00),
                                                    width: getHorizontalSize(
                                                        343.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .passwordController,
                                                        obscureText: true,
                                                        decoration: InputDecoration(
                                                            hintText: "lbl_password"
                                                                .tr,
                                                            hintStyle: AppStyle.textStyleSofiaPro142.copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        14.0),
                                                                color: ColorConstant
                                                                    .whiteA700),
                                                            enabledBorder:
                                                                UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#ffffffff"), width: 1)),
                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#ffffffff"), width: 1)),
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(top: getVerticalSize(3.00), bottom: getVerticalSize(11.00))),
                                                        style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(14.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w400)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            51.00),
                                                        right: getHorizontalSize(
                                                            16.00)),
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          onTapBtnSignin();
                                                        },
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height:
                                                                getVerticalSize(
                                                                    45.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    343.00),
                                                            decoration: AppDecoration
                                                                .textStyleSofiaPro14,
                                                            child: Text("lbl_sign_in".tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textStyleSofiaPro14
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(14),
                                                                        letterSpacing: 0.25,
                                                                        height: 1.43)))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00),
                                                        top: getVerticalSize(
                                                            53.00),
                                                        right:
                                                            getHorizontalSize(
                                                                16.00)),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: <
                                                                InlineSpan>[
                                                          TextSpan(
                                                              text: "msg_don_t_have_an_a3"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Sofia Pro',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  letterSpacing:
                                                                      0.25,
                                                                  height:
                                                                      1.43)),
                                                          TextSpan(
                                                              text: "lbl_sign_up"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  letterSpacing:
                                                                      0.25,
                                                                  height: 1.43,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.center)))
                                          ])))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapBtnSignin() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
