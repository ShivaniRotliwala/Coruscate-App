import 'dart:developer';
import 'dart:io';

import 'package:coruscate/data/models/userInfoModel/post_userinfo_req.dart';
import 'package:coruscate/presentation/profile_screen/profile_screen.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';

import 'controller/edit_profile_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:permission_handler/permission_handler.dart';

late File imageFile;
Rx<String> imageUrl = "chk".obs;

class EditProfileScreen extends GetWidget<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(color: ColorConstant.black900),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: size.width,
                            margin:
                                EdgeInsets.only(top: getVerticalSize(16.00)),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(16.00),
                                    right: getHorizontalSize(16.00)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            onTapImgArrowleft();
                                          },
                                          child: Container(
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              child: SvgPicture.asset(
                                                  ImageConstant.imgArrowleft,
                                                  fit: BoxFit.fill))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: getVerticalSize(4.00),
                                              bottom: getVerticalSize(4.00)),
                                          child: GestureDetector(
                                            onTap: () {
                                              onTapSaveButton();
                                              // await Get.toNamed(
                                              //     AppRoutes.profileScreen);
                                            },
                                            // () => Get.toNamed(
                                            //     AppRoutes.profileScreen),
                                            child: Text("lbl_save".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textStyleSofiaPro124
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(12),
                                                        letterSpacing: 0.40,
                                                        height: 1.33)),
                                          ))
                                    ])))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getSize(110.00),
                            width: getSize(110.00),
                            margin: EdgeInsets.only(
                                left: getHorizontalSize(16.00),
                                top: getVerticalSize(30.00),
                                right: getHorizontalSize(16.00)),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: getSize(110.00),
                                          width: getSize(110.00),
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    getSize(
                                                                        55.00)),
                                                        child: Obx(
                                                            () =>
                                                                GestureDetector(
                                                                  onTap: () =>
                                                                      // _getFromGallery(),
                                                                      uploadImage(),
                                                                  child: (imageUrl.compareTo(
                                                                              "chk") !=
                                                                          0)
                                                                      ? Image.network(
                                                                          imageUrl
                                                                              .value)
                                                                      : Image.network(
                                                                          Get.find<PrefUtils>()
                                                                              .getUserImagevalue(),
                                                                          // ImageConstant
                                                                          //     .imgUnsplashdxmxkp1,
                                                                          height: getSize(
                                                                              110.00),
                                                                          width: getSize(
                                                                              110.00),
                                                                          fit: BoxFit
                                                                              .fill),
                                                                )))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            30.00),
                                                        width:
                                                            getHorizontalSize(
                                                                110.00),
                                                        margin: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    10.00)),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .black90099)))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(41.00),
                                              top: getVerticalSize(10.00),
                                              right: getHorizontalSize(41.00),
                                              bottom: getVerticalSize(7.00)),
                                          child: Text("Edit",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textStyleSofiaPro123
                                                  .copyWith(
                                                      fontSize: getFontSize(12),
                                                      letterSpacing: 0.40,
                                                      height: 1.33))))
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(16.00),
                                top: getVerticalSize(16.00),
                                right: getHorizontalSize(16.00)),
                            child: Text(Get.find<PrefUtils>().getUseremail(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textStyleSofiaPro142.copyWith(
                                    fontSize: getFontSize(14),
                                    letterSpacing: 0.25,
                                    height: 1.43)))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(16.00),
                                top: getVerticalSize(30.00),
                                right: getHorizontalSize(16.00)),
                            child: Text("lbl_my_experties".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textStyleSofiaPro16.copyWith(
                                    fontSize: getFontSize(16),
                                    letterSpacing: 0.15,
                                    height: 1.50)))),
                    Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(10.00)),
                        child: Container(
                          child: SingleChildScrollView(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 30,
                                    child: SizedBox(
                                      width: 370,
                                      child: Obx(
                                        () => ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: controller
                                                .editProfileModelObj
                                                .value
                                                .expertiesList
                                                .length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00)),
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: 10,
                                                    width: getHorizontalSize(
                                                        76.00),
                                                    decoration: AppDecoration
                                                        .textStyleSofiaPro125,
                                                    child: Text(
                                                        //"lbl_ui_design".tr,
                                                        controller
                                                            .editProfileModelObj
                                                            .value
                                                            .expertiesList[
                                                                index]
                                                            .ExpertiesName
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textStyleSofiaPro125
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                letterSpacing:
                                                                    0.40,
                                                                height: 1.33))),
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
                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: Padding(
                    //     padding: EdgeInsets.only(
                    //         top: getVerticalSize(10.00),
                    //         bottom: getVerticalSize(20.00)),
                    //     child:
                    //         // Column(
                    //         //     mainAxisSize: MainAxisSize.min,
                    //         //     mainAxisAlignment: MainAxisAlignment.start,
                    //         //     children: [
                    //         // Align(
                    //         //   alignment: Alignment.centerLeft,
                    //         //   child:
                    //         Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             mainAxisSize: MainAxisSize.max,
                    //             children: [
                    //           ListView.builder(
                    //               scrollDirection: Axis.horizontal,
                    //               itemCount: controller.editProfileModelObj
                    //                   .value.expertiesList.length,
                    //               itemBuilder: (context, index) {
                    //                 return Padding(
                    //                   padding: EdgeInsets.only(
                    //                       left: getHorizontalSize(16.00)),
                    //                   child: Container(
                    //                     alignment: Alignment.center,
                    //                     height: getVerticalSize(26.00),
                    //                     width: getHorizontalSize(76.00),
                    //                     decoration:
                    //                         AppDecoration.textStyleSofiaPro125,
                    //                     child: Text("lbl_ui_design".tr,
                    //                         textAlign: TextAlign.left,
                    //                         style: AppStyle.textStyleSofiaPro125
                    //                             .copyWith(
                    //                                 fontSize: getFontSize(12),
                    //                                 letterSpacing: 0.40,
                    //                                 height: 1.33)),
                    //                   ),
                    //                 );
                    //               }),
                    //           // Padding(
                    //           //     padding: EdgeInsets.only(
                    //           //         left: getHorizontalSize(
                    //           //             10.00)),
                    //           //     child: Container(
                    //           //         alignment: Alignment
                    //           //             .center,
                    //           //         height:
                    //           //             getVerticalSize(
                    //           //                 26.00),
                    //           //         width:
                    //           //             getHorizontalSize(
                    //           //                 80.00),
                    //           //         decoration:
                    //           //             AppDecoration
                    //           //                 .textStyleSofiaPro125,
                    //           //         child: Text(
                    //           //             "lbl_ux_design"
                    //           //                 .tr,
                    //           //             textAlign:
                    //           //                 TextAlign
                    //           //                     .left,
                    //           //             style: AppStyle
                    //           //                 .textStyleSofiaPro125
                    //           //                 .copyWith(
                    //           //                     fontSize: getFontSize(12),
                    //           //                     letterSpacing: 0.40,
                    //           //                     height: 1.33)))),
                    //           // Padding(
                    //           //     padding: EdgeInsets.only(
                    //           //         left: getHorizontalSize(
                    //           //             10.00)),
                    //           //     child: Container(
                    //           //         alignment: Alignment
                    //           //             .center,
                    //           //         height:
                    //           //             getVerticalSize(
                    //           //                 26.00),
                    //           //         width:
                    //           //             getHorizontalSize(
                    //           //                 66.00),
                    //           //         decoration:
                    //           //             AppDecoration
                    //           //                 .textStyleSofiaPro125,
                    //           //         child: Text(
                    //           //             "lbl_react_js"
                    //           //                 .tr,
                    //           //             textAlign:
                    //           //                 TextAlign
                    //           //                     .left,
                    //           //             style: AppStyle
                    //           //                 .textStyleSofiaPro125
                    //           //                 .copyWith(
                    //           //                     fontSize: getFontSize(12),
                    //           //                     letterSpacing: 0.40,
                    //           //                     height: 1.33)))),
                    //           // Padding(
                    //           //     padding: EdgeInsets.only(
                    //           //         left: getHorizontalSize(
                    //           //             10.00),
                    //           //         right:
                    //           //             getHorizontalSize(
                    //           //                 49.00)),
                    //           //     child: Container(
                    //           //         alignment: Alignment
                    //           //             .center,
                    //           //         height:
                    //           //             getVerticalSize(
                    //           //                 26.00),
                    //           //         width:
                    //           //             getHorizontalSize(
                    //           //                 58.00),
                    //           //         decoration:
                    //           //             AppDecoration
                    //           //                 .textStyleSofiaPro125,
                    //           //         child: Text("lbl_flutter".tr,
                    //           //             textAlign:
                    //           //                 TextAlign
                    //           //                     .left,
                    //           //             style: AppStyle
                    //           //                 .textStyleSofiaPro125
                    //           //                 .copyWith(
                    //           //                     fontSize:
                    //           //                         getFontSize(12),
                    //           //                     letterSpacing: 0.40,
                    //           //                     height: 1.33))))
                    //         ]),
                    //     //),
                    //     // Align(
                    //     //     alignment: Alignment.centerLeft,
                    //     //     child: Padding(
                    //     //         padding: EdgeInsets.only(
                    //     //             left: getHorizontalSize(
                    //     //                 16.00),
                    //     //             top: getVerticalSize(
                    //     //                 10.00),
                    //     //             right: getHorizontalSize(
                    //     //                 16.00)),
                    //     //         child: Container(
                    //     //             alignment:
                    //     //                 Alignment.center,
                    //     //             height: getVerticalSize(
                    //     //                 26.00),
                    //     //             width:
                    //     //                 getHorizontalSize(
                    //     //                     110.00),
                    //     //             decoration: AppDecoration
                    //     //                 .textStyleSofiaPro125,
                    //     //             child: Text("lbl_design_thinking".tr,
                    //     //                 textAlign:
                    //     //                     TextAlign.left,
                    //     //                 style: AppStyle
                    //     //                     .textStyleSofiaPro125
                    //     //                     .copyWith(
                    //     //                         fontSize:
                    //     //                             getFontSize(12),
                    //     //                         letterSpacing: 0.40,
                    //     //                         height: 1.33)))))
                    //     //]),
                    //   ),
                    // )
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    log(pickedFile!.path);
    if (pickedFile != null) {
      Obx(() {
        imageFile = File(pickedFile.path);
        log(imageFile.toString());
        return Text(imageFile.toString());
      });
    }
    // Step 1: Retrieve image from picker

// PickedFile? image = await ImagePicker().getImage(
//       source: ImageSource.gallery,
//       maxWidth: 1800,
//       maxHeight: 1800,
//     );

// // Step 2: Check for valid file
// if (image == null) return;

// // Step 3: Get directory where we can duplicate selected file.
// final String path = await getApplicationDocumentsDirectory().path;

// // Step 4: Copy the file to a application document directory.
//  var fileName = basename(file.path);
// final File localImage = await image.copy('$path/$fileName');
  }

  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    // PickedFile image;
    //Check Permissions
    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted) {
      //Select Image
      PickedFile? image = await ImagePicker.platform
          .pickImage(source: ImageSource.gallery, imageQuality: 15);
      var file = File(image!.path);
      log('path of file ---> ${file}');

      if (image.path != '') {
        //Upload to Firebase
        // var snapshot = await _firebaseStorage
        //     .ref()
        //     .child('images/imageName')
        //     .putFile(file)
        //     .whenComplete;
        // var downloadUrl = await snapshot.getDownloadURL();
        Reference ref = FirebaseStorage.instance.ref().child(file.path);
        UploadTask uploadTask = ref.putFile(file);
        log('Uploaded=>${uploadTask.toString()}');
        uploadTask.then((res) async {
          AlertDialog(
            title: Text("Uploaded done"),
          );
          var downloadUrl = await res.ref.getDownloadURL();
          log('Downloaded=>$downloadUrl.toString()}');
          imageUrl.value = downloadUrl;
          log('ImageUrl->${imageUrl.value}');
        });
        // Obx(() {
        //   imageUrl = downloadUrl;
        //   return Text(imageUrl.toString());
        // });
      } else {
        print('No Image Path Received');
      }
    } else {
      print('Permission not granted. Try Again with permission access');
    }
  }

  onTapSaveButton() {
    controller.callDisplayUserInfoForEdit(imageUrl);
    // PostUserInfoListReq postUserInfoListReq = PostUserInfoListReq();
    // // log('-------------------In controller User Details=>$postUserInfoListResp');
    // // log('User Name=>${postUserInfoListResp.data!.username.toString()}');
    // // log('User Email=>${postUserInfoListResp.data!.email.toString()}');
    // postUserInfoListReq.username = 'demouser';
    // // postUserInfoListResp.data!.username.toString();
    // // editProfileModelObj.value.EditProfileUsername.value =
    // //     postUserInfoListResp.data!.username.toString();
    // log('User Name After Assiging=>${postUserInfoListReq.username}');
    // postUserInfoListReq.userName = 'demouser';
    // //postUserInfoListResp.data!.userName.toString();
    // postUserInfoListReq.email = 'demouser@gmail.com';
    // //postUserInfoListResp.data!.email.toString();
    // // editProfileModelObj.value.EditProfileUserEmail.value =
    // //     postUserInfoListResp.data!.email.toString();
    // log('User Email After Assiging=>${postUserInfoListReq.email}');
    // postUserInfoListReq.userCompany = '62469da081322786d1500b9d';
    // //postUserInfoListResp.data!.userCompany.toString();
    // postUserInfoListReq.designation = 'developer';
    // //postUserInfoListResp.data!.designation.toString();
    // postUserInfoListReq.experties = 'flutter';
    // //postUserInfoListResp.data!.experties.toString();
    // postUserInfoListReq.mobileNo = '7564321234';
    // //postUserInfoListResp.data!.mobileNo.toString();
    // postUserInfoListReq.MobileNo = '7564321234';
    // //postUserInfoListResp.data!.mobileNo.toString();
    // postUserInfoListReq.userId = 1;
    // postUserInfoListReq.userImage = imageUrl.value.toString();
    // postUserInfoListReq.userType = 1;
    // log('User Image After Assiging=>${postUserInfoListReq.userImage}');
    // //postUserInfoListResp.data!.userImage.toString();

    // controller.callUpdateUserProfileById(
    //   req: postUserInfoListReq.toJson(),
    //   successCall: _onCreateUserProfileUpdateSuccess,
    //   errCall: _onCreateUserProfileUpdateError,
    //   id: Get.find<PrefUtils>().getUserid(),
    // );
  }

  // void _onCreateUserProfileUpdateSuccess() {
  //   Get.toNamed(AppRoutes.profileScreen);
  // }

  // void _onCreateUserProfileUpdateError() {}
}
