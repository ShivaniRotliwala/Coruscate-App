import 'package:coruscate/data/models/expertiesListModel/post_expertieslist_req.dart';
import 'package:coruscate/presentation/edit_profile_screen/controller/edit_profile_controller.dart';
import 'package:coruscate/presentation/profile_screen/models/profile_item_model.dart';
import 'package:coruscate/presentation/profile_screen/widgets/profile_item_widget.dart';

import 'controller/profile_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

late AwesomeDialog dialog;

class ProfileScreen extends GetWidget<ProfileController> {
  var editprofileController = Get.put(EditProfileController());

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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapImgArrowleft();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(16.00),
                                          top: getVerticalSize(16.00),
                                          right: getHorizontalSize(16.00)),
                                      child: Container(
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgArrowleft,
                                              fit: BoxFit.fill)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(192.00),
                                      width: getHorizontalSize(342.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(16.00),
                                          top: getVerticalSize(29.00),
                                          right: getHorizontalSize(16.00)),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                                10.00),
                                                        bottom: getVerticalSize(
                                                            10.00)),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          getSize(
                                                                              34.00)),
                                                              child:
                                                                  Image.network(
                                                                      // ImageConstant
                                                                      //     .imgUnsplashdxmxkp,
                                                                      Get.find<PrefUtils>()
                                                                          .getUserImagevalue(),
                                                                      height: getSize(
                                                                          68.00),
                                                                      width: getSize(
                                                                          68.00),
                                                                      fit: BoxFit
                                                                          .fill)),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          20.00),
                                                                  top: getVerticalSize(
                                                                      10.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right: getHorizontalSize(
                                                                                10.00)),
                                                                        child:
                                                                            Obx(
                                                                          () => Text(
                                                                              controller.profileModelObj.value.ProfileUsername.toString(),
                                                                              // Get.find<PrefUtils>()
                                                                              //     .getUsername(),
                                                                              // "lbl_rayna_dias"
                                                                              //     .tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textStyleSofiaPromedium201.copyWith(fontSize: getFontSize(20), letterSpacing: 0.15, height: 1.20)),
                                                                        )),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                4.00)),
                                                                        child:
                                                                            Obx(
                                                                          () => Text(
                                                                              controller.profileModelObj.value.ProfileUserEmail.toString(),
                                                                              // Get.find<PrefUtils>()
                                                                              //     .getUseremail(),
                                                                              // "msg_raynadias_dhiwi".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textStyleSofiaPro142.copyWith(fontSize: getFontSize(14), letterSpacing: 0.25, height: 1.43)),
                                                                        ))
                                                                  ]))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            2.00)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(left: getHorizontalSize(10.00)),
                                                                        child: GestureDetector(
                                                                          onTap: () =>
                                                                              Get.toNamed(AppRoutes.editProfileScreen),
                                                                          child: Text(
                                                                              "lbl_edit_profile".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textStyleSofiaPro124.copyWith(fontSize: getFontSize(12), letterSpacing: 0.40, height: 1.33)),
                                                                        ))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: getVerticalSize(
                                                                              78.00),
                                                                          right:
                                                                              getHorizontalSize(10.00)),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Text(
                                                                              "lbl_my_experties".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textStyleSofiaPro16.copyWith(fontSize: getFontSize(16), letterSpacing: 0.15, height: 1.50)),
                                                                          SizedBox(
                                                                              width: 155),
                                                                          GestureDetector(
                                                                            onTap: () =>
                                                                                dialog = AwesomeDialog(
                                                                              btnCancelOnPress: () {},
                                                                              btnOkText: "Confirm",
                                                                              btnCancelColor: Colors.grey,
                                                                              btnOkColor: Colors.black,
                                                                              btnOkOnPress: () {
                                                                                PostExpertiesListReq postExpertiesListReq = PostExpertiesListReq();
                                                                                postExpertiesListReq.expertiesName = controller.expertiesController.text;
                                                                                postExpertiesListReq.userId = Get.find<PrefUtils>().getUserid();
                                                                                postExpertiesListReq.expertiesId = 101;
                                                                                controller.callCreateExpertieslist(
                                                                                  postExpertiesListReq.toJson(),
                                                                                  successCall: _onCreateAddExpertieslistSuccess,
                                                                                  errCall: _onCreateAddExpertieslistError,
                                                                                );

                                                                                // controller.callDisplayExpertieslist();
                                                                                // controller.expertiesController.clear();
                                                                                //print("Expertise added!!");
                                                                              },
                                                                              context: context,
                                                                              animType: AnimType.SCALE,
                                                                              dialogType: DialogType.INFO,
                                                                              keyboardAware: true,
                                                                              body: Padding(
                                                                                padding: const EdgeInsets.all(8.0),
                                                                                child: Column(
                                                                                  children: <Widget>[
                                                                                    Text(
                                                                                      'Add Experties',
                                                                                      style: Theme.of(context).textTheme.headline6,
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 10,
                                                                                    ),
                                                                                    Material(
                                                                                      elevation: 0,
                                                                                      color: Colors.blueGrey[100],
                                                                                      child: TextFormField(
                                                                                        autofocus: true,
                                                                                        minLines: 1,
                                                                                        decoration: InputDecoration(
                                                                                          border: InputBorder.none,
                                                                                          labelText: 'Experties',
                                                                                          prefixIcon: Icon(Icons.text_fields),
                                                                                        ),
                                                                                        controller: controller.expertiesController,
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 10,
                                                                                    ),
                                                                                    // AnimatedButton(
                                                                                    //     isFixedHeight: false,

                                                                                    //     text: 'Cancel',
                                                                                    //     pressEvent: () {
                                                                                    //       dialog.dismiss();
                                                                                    //     })
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            )..show(),
                                                                            child: Text("Add Experties",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.textStyleSofiaPro124.copyWith(fontSize: getFontSize(12), letterSpacing: 0.40, height: 1.33)),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ))
                                                              ]),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      10.00)),
                                                              child: Container(
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              30,
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                370,
                                                                            child:
                                                                                Obx(
                                                                              () => ListView.builder(
                                                                                  scrollDirection: Axis.horizontal,
                                                                                  itemCount: controller.profileModelObj.value.expertiesList.length,
                                                                                  itemBuilder: (context, index) {
                                                                                    return Padding(
                                                                                      padding: EdgeInsets.only(left: getHorizontalSize(10.00)),
                                                                                      child: Container(
                                                                                          alignment: Alignment.center,
                                                                                          height: 10,
                                                                                          width: getHorizontalSize(76.00),
                                                                                          decoration: AppDecoration.textStyleSofiaPro125,
                                                                                          child: Text(
                                                                                              //"lbl_ui_design".tr,
                                                                                              controller.profileModelObj.value.expertiesList[index].ExpertiesName.toString(),
                                                                                              textAlign: TextAlign.left,
                                                                                              style: AppStyle.textStyleSofiaPro125.copyWith(fontSize: getFontSize(12), letterSpacing: 0.40, height: 1.33))),
                                                                                    );
                                                                                  }),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        // Padding(
                                                                        //     padding:
                                                                        //         EdgeInsets.only(top: getVerticalSize(10.00), right: getHorizontalSize(10.00)),
                                                                        //     child: Container(alignment: Alignment.center, height: getVerticalSize(26.00), width: getHorizontalSize(110.00), color: Colors.amber, child: Text("lbl_design_thinking".tr, textAlign: TextAlign.left, style: AppStyle.textStyleSofiaPro125.copyWith(fontSize: getFontSize(12), letterSpacing: 0.40, height: 1.33))))
                                                                      ]),
                                                                ),
                                                              ))
                                                        ])))
                                          ]))),
                              //Lable Schedule By Me
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(16.00),
                                      top: getVerticalSize(30.00),
                                      right: getHorizontalSize(16.00)),
                                  child: Text("lbl_scheduled_by_me".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textStyleSofiaPro16
                                          .copyWith(
                                              fontSize: getFontSize(16),
                                              letterSpacing: 0.15,
                                              height: 1.50))),
                              //List of meeting

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
                                              .profileModelObj
                                              .value
                                              .meetingByUserItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            ProfilepageItemModel model =
                                                controller.profileModelObj.value
                                                        .meetingByUserItemList[
                                                    index];
                                            return ProfileItemWidget(model);
                                          }),
                                    ),
                                  ),
                                  // ),
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
                                  //       crossAxisAlignment:
                                  //           CrossAxisAlignment.center,
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
                                  //               crossAxisAlignment:
                                  //                   CrossAxisAlignment.start,
                                  //               mainAxisAlignment:
                                  //                   MainAxisAlignment.start,
                                  //               children: [
                                  //                 Padding(
                                  //                   padding: EdgeInsets.only(
                                  //                     right: getHorizontalSize(
                                  //                       10.00,
                                  //                     ),
                                  //                   ),
                                  //                   child: Text(
                                  //                     "msg_15_nov_2_30".tr,
                                  //                     overflow:
                                  //                         TextOverflow.ellipsis,
                                  //                     textAlign: TextAlign.left,
                                  //                     style: AppStyle
                                  //                         .textStyleSofiaPro122
                                  //                         .copyWith(
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
                                  //                     mainAxisSize:
                                  //                         MainAxisSize.min,
                                  //                     crossAxisAlignment:
                                  //                         CrossAxisAlignment.start,
                                  //                     mainAxisAlignment:
                                  //                         MainAxisAlignment.start,
                                  //                     children: [
                                  //                       Container(
                                  //                         width: getHorizontalSize(
                                  //                           122.00,
                                  //                         ),
                                  //                         margin: EdgeInsets.only(
                                  //                           right:
                                  //                               getHorizontalSize(
                                  //                             10.00,
                                  //                           ),
                                  //                         ),
                                  //                         child: Text(
                                  //                           "msg_nural_engine_di"
                                  //                               .tr,
                                  //                           maxLines: null,
                                  //                           textAlign:
                                  //                               TextAlign.left,
                                  //                           style: AppStyle
                                  //                               .textStyleSofiaPromedium201
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
                                  //                           "msg_lorem_ipsum_is".tr,
                                  //                           maxLines: null,
                                  //                           textAlign:
                                  //                               TextAlign.left,
                                  //                           style: AppStyle
                                  //                               .textStyleSofiaPro123
                                  //                               .copyWith(
                                  //                             fontSize: getFontSize(
                                  //                               12,
                                  //                             ),
                                  //                             letterSpacing: 0.40,
                                  //                             height: 1.33,
                                  //                           ),
                                  //                         ),
                                  //                       ),
                                  //                       SizedBox(
                                  //                         height: 10,
                                  //                       ),
                                  //                       Row(
                                  //                         children: [
                                  //                           Container(
                                  //                               alignment: Alignment
                                  //                                   .center,
                                  //                               height:
                                  //                                   getVerticalSize(
                                  //                                       28.00),
                                  //                               width:
                                  //                                   getHorizontalSize(
                                  //                                       60.00),
                                  //                               decoration:
                                  //                                   AppDecoration
                                  //                                       .textStyleSofiaPro126,
                                  //                               child:
                                  //                                   GestureDetector(
                                  //                                 onTap: () =>
                                  //                                     AwesomeDialog(
                                  //                                   context:
                                  //                                       context,
                                  //                                   dialogType:
                                  //                                       DialogType
                                  //                                           .QUESTION,
                                  //                                   headerAnimationLoop:
                                  //                                       true,
                                  //                                   animType: AnimType
                                  //                                       .BOTTOMSLIDE,
                                  //                                   title:
                                  //                                       'Discard Event',
                                  //                                   desc:
                                  //                                       'Are you sure you want to cancel the meeting?',
                                  //                                   buttonsTextStyle:
                                  //                                       TextStyle(
                                  //                                           color: Colors
                                  //                                               .white),
                                  //                                   showCloseIcon:
                                  //                                       true,
                                  //                                   btnCancelOnPress:
                                  //                                       () {
                                  //                                     dialog
                                  //                                         .dismiss();
                                  //                                   },
                                  //                                   btnCancelColor:
                                  //                                       Colors.grey,
                                  //                                   btnOkOnPress:
                                  //                                       () {
                                  //                                     Get.toNamed(
                                  //                                         AppRoutes
                                  //                                             .successCancelScreen);
                                  //                                   },
                                  //                                   btnOkText:
                                  //                                       "Yes",
                                  //                                   btnOkColor:
                                  //                                       Colors
                                  //                                           .black,
                                  //                                 )..show(),
                                  //                                 child: Text(
                                  //                                     "lbl_cancel"
                                  //                                         .tr,
                                  //                                     textAlign:
                                  //                                         TextAlign
                                  //                                             .left,
                                  //                                     style: AppStyle.textStyleSofiaPro126.copyWith(
                                  //                                         fontSize:
                                  //                                             getFontSize(
                                  //                                                 12),
                                  //                                         letterSpacing:
                                  //                                             0.40,
                                  //                                         height:
                                  //                                             1.33)),
                                  //                               )),
                                  //                           SizedBox(
                                  //                             width: 10,
                                  //                           ),
                                  //                           Container(
                                  //                             alignment:
                                  //                                 Alignment.center,
                                  //                             height:
                                  //                                 getVerticalSize(
                                  //                                     28.00),
                                  //                             width:
                                  //                                 getHorizontalSize(
                                  //                                     43.00),
                                  //                             decoration: AppDecoration
                                  //                                 .textStyleSofiaProblueA70033,
                                  //                             child: Text(
                                  //                                 "lbl_edit".tr,
                                  //                                 textAlign: TextAlign
                                  //                                     .left,
                                  //                                 style: AppStyle
                                  //                                     .textStyleSofiaPro124
                                  //                                     .copyWith(
                                  //                                         fontSize:
                                  //                                             getFontSize(
                                  //                                                 12),
                                  //                                         letterSpacing:
                                  //                                             0.40,
                                  //                                         height:
                                  //                                             1.33)),
                                  //                           )
                                  //                         ],
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
                                  //               186.00,
                                  //             ),
                                  //             width: getHorizontalSize(
                                  //               177.00,
                                  //             ),
                                  //             fit: BoxFit.fill,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                ),
                              ),
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  void _onCreateAddExpertieslistSuccess() {
    controller.callDisplayExpertieslist();
    editprofileController.callDisplayExpertieslist();
    controller.expertiesController.clear();
  }

  void _onCreateAddExpertieslistError() {}
}
