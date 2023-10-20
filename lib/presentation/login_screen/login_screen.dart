import 'controller/login_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:coruscate/domain/firebaseGoogleAuth/firebaseGoogleAuth.dart';

class LoginScreen extends GetWidget<LoginController> {
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
                                      top: getVerticalSize(116.00),
                                      right: getHorizontalSize(16.00)),
                                  child: Image.asset(ImageConstant.imgImage1,
                                      height: getSize(300.00),
                                      width: getSize(300.00),
                                      fit: BoxFit.fill)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(16.00),
                                      top: getVerticalSize(133.00),
                                      right: getHorizontalSize(16.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapBtnSigninwithem();
                                            },
                                            child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(45.00),
                                                width:
                                                    getHorizontalSize(343.00),
                                                decoration: AppDecoration
                                                    .textStyleSofiaPro14,
                                                child: Text(
                                                    "msg_sign_in_with_em".tr,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textStyleSofiaPro14
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(14),
                                                            letterSpacing: 0.25,
                                                            height: 1.43)))),
                                        // GestureDetector(
                                        //     onTap: () {
                                        //       onTapGroup41();
                                        //     },
                                        //     child: Container(
                                        //         height: getVerticalSize(45.00),
                                        //         width:
                                        //             getHorizontalSize(343.00),
                                        //         margin: EdgeInsets.only(
                                        //             top:
                                        //                 getVerticalSize(16.00)),
                                        //         decoration: BoxDecoration(
                                        //             color:
                                        //                 ColorConstant.whiteA700,
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     getHorizontalSize(
                                        //                         3.00))),
                                        //         child: Row(
                                        //             mainAxisAlignment:
                                        //                 MainAxisAlignment
                                        //                     .center,
                                        //             crossAxisAlignment:
                                        //                 CrossAxisAlignment
                                        //                     .center,
                                        //             mainAxisSize:
                                        //                 MainAxisSize.max,
                                        //             children: [
                                        //               Padding(
                                        //                   padding: EdgeInsets.only(
                                        //                       left:
                                        //                           getHorizontalSize(
                                        //                               71.00),
                                        //                       top:
                                        //                           getVerticalSize(
                                        //                               11.00),
                                        //                       bottom:
                                        //                           getVerticalSize(
                                        //                               14.00)),
                                        //                   child: Image.asset(
                                        //                       ImageConstant
                                        //                           .imgGoogle11,
                                        //                       height: getSize(
                                        //                           20.00),
                                        //                       width: getSize(
                                        //                           20.00),
                                        //                       fit:
                                        //                           BoxFit.fill)),
                                        //               GestureDetector(
                                        //                   onTap: () {
                                        //                     onTapTxtSigninwithgo();
                                        //                   },
                                        //                   child: Padding(
                                        //                       padding: EdgeInsets.only(
                                        //                           left: getHorizontalSize(
                                        //                               12.00),
                                        //                           top: getVerticalSize(
                                        //                               12.50),
                                        //                           right: getHorizontalSize(
                                        //                               107.00),
                                        //                           bottom: getVerticalSize(
                                        //                               12.50)),
                                        //                       child: Text(
                                        //                           "msg_sign_in_with_go"
                                        //                               .tr,
                                        //                           overflow:
                                        //                               TextOverflow
                                        //                                   .ellipsis,
                                        //                           textAlign:
                                        //                               TextAlign
                                        //                                   .center,
                                        //                           style: AppStyle
                                        //                               .textStyleSofiaPro141
                                        //                               .copyWith(
                                        //                                   fontSize: getFontSize(14),
                                        //                                   letterSpacing: 0.25,
                                        //                                   height: 1.43))))
                                        //             ])
                                        //             )
                                        //           )
                                      ])),
                              // GestureDetector(
                              //     onTap: () {
                              //       onTapTxtDonthaveana();
                              //     },
                              //     child: Container(
                              //         margin: EdgeInsets.only(
                              //             left: getHorizontalSize(16.00),
                              //             top: getVerticalSize(53.00),
                              //             right: getHorizontalSize(16.00),
                              //             bottom: getVerticalSize(20.00)),
                              //         child: RichText(
                              //             text: TextSpan(children: <InlineSpan>[
                              //               TextSpan(
                              //                   text: "msg_don_t_have_an_a2".tr,
                              //                   style: TextStyle(
                              //                       color:
                              //                           ColorConstant.whiteA700,
                              //                       fontSize: getFontSize(14),
                              //                       fontFamily: 'Sofia Pro',
                              //                       fontWeight: FontWeight.w400,
                              //                       letterSpacing: 0.25,
                              //                       height: 1.43)),
                              //               TextSpan(
                              //                   text: "lbl_sign_up".tr,
                              //                   style: TextStyle(
                              //                       color:
                              //                           ColorConstant.whiteA700,
                              //                       fontSize: getFontSize(14),
                              //                       fontFamily: 'Roboto',
                              //                       fontWeight: FontWeight.w500,
                              //                       letterSpacing: 0.25,
                              //                       height: 1.43,
                              //                       decoration: TextDecoration
                              //                           .underline))
                              //             ]),
                              //             textAlign: TextAlign.center))
                              //           )
                            ]))))));
  }

  onTapBtnSigninwithem() async {
    Get.toNamed(AppRoutes.signUpWithEmailScreen);
    //TODO Bind email and password controller to below variable
    // final FirebaseAuth _auth = FirebaseAuth.instance;
    // await _auth
    //     .signInWithEmailAndPassword(
    //   email: "", // Bind email Controller
    //   password: "", // Bind password Controller
    // )
    //     .then((firebaseSignInUser) {
    //   if (firebaseSignInUser.user != null) {
    //     //TODO Actions to be performed after signin
    //   } else {
    //     Get.snackbar('Error', 'user data is empty');
    //   }
    // }).catchError((onError) {
    //   Get.snackbar('Error', onError.toString());
    // });
  }

  onTapGroup41() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapTxtSigninwithgo() async {
    Get.toNamed(AppRoutes.homepageScreen);
    // await FirebaseGoogleAuthHelper()
    //     .signInWithGoogle()
    //     .then((firebaseGoogleUser) {
    //   //TODO Actions to be performed after signin
    //   if (firebaseGoogleUser.user != null) {
    //     //TODO Actions to be performed after signin
    //   } else {
    //     Get.snackbar('Error', 'user data is empty');
    //   }
    // }).catchError((onError) {
    //   Get.snackbar('Error', onError.toString());
    // });
  }

  onTapTxtDonthaveana() {
    Get.offNamed(AppRoutes.signUpScreen);
  }
}
