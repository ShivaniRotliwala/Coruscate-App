import 'dart:developer';

import 'package:coruscate/presentation/book_space2_screen/models/book_space2_model.dart';
import 'package:coruscate/presentation/webinar_page/controller/webinar_controller.dart';
import 'package:coruscate/presentation/webinar_page/models/webinar_model.dart';
import 'package:intl/intl.dart';

import 'controller/book_space2_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookSpace2Screen extends GetWidget<BookSpace2Controller> {
  final formKey = GlobalKey<FormState>();
  late DateTime dateFormatData;
  late DateTime tempDate;
  DateTime? pickedDate;
  Rx<WebinarModel> webinarModelObj = WebinarModel().obs;
  late var webinarController = Get.put(WebinarController(webinarModelObj));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
      key: formKey,
      child: Scaffold(
          backgroundColor: ColorConstant.black900,
          body: Container(
              width: size.width,
              child: SingleChildScrollView(
                  child: Container(
                      decoration: BoxDecoration(color: ColorConstant.black900),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
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
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(16.00),
                                    top: getVerticalSize(20.00),
                                    right: getHorizontalSize(16.00)),
                                child: Text("lbl_webinar2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.textStyleSofiaPromedium48
                                        .copyWith(
                                            fontSize: getFontSize(48),
                                            height: 1.17))),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(16.00),
                                    top: getVerticalSize(60.00),
                                    right: getHorizontalSize(16.00)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: getVerticalSize(16.00)),
                                          child: Container(
                                              width: getHorizontalSize(343.00),
                                              child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value == "") {
                                                      return "Enter meeting link";
                                                    }
                                                  },
                                                  controller:
                                                      controller.linkController,
                                                  decoration: InputDecoration(
                                                      labelText: "lbl_link"
                                                          .tr
                                                          .toUpperCase(),
                                                      labelStyle: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: 16),
                                                      hintText: "lbl_https".tr,
                                                      hintStyle: AppStyle
                                                          .textStyleSofiaPromedium24,
                                                      border:
                                                          OutlineInputBorder(),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ColorConstant.fromHex(
                                                                  "#33ffffff"),
                                                              width: 1)),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ColorConstant.fromHex(
                                                                  "#33ffffff"),
                                                              width: 1)),
                                                      contentPadding:
                                                          EdgeInsets.all(10.00)),
                                                  style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(19.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500))))
                                    ]),
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(40.00),
                                        right: getHorizontalSize(16.00)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(16.00)),
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(343.00),
                                                  child: TextFormField(
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value == "") {
                                                          return "Select Date";
                                                        }
                                                      },
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .requestFocus(
                                                                FocusNode());
                                                        onTapSelectDate(
                                                          context,
                                                        );
                                                      },
                                                      controller: controller
                                                          .dateController,
                                                      decoration: InputDecoration(
                                                          labelText: "lbl_date"
                                                              .tr
                                                              .toUpperCase(),
                                                          labelStyle: TextStyle(
                                                              color: ColorConstant
                                                                  .gray600,
                                                              fontSize: 16),
                                                          hintText: "lbl_mm_dd_yyyy"
                                                              .tr,
                                                          hintStyle: AppStyle
                                                              .textStyleSofiaPromedium24,
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: ColorConstant.fromHex(
                                                                      "#33ffffff"),
                                                                  width: 1)),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(color: ColorConstant.fromHex("#33ffffff"), width: 1)),
                                                          contentPadding: EdgeInsets.all(10.00)),
                                                      style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(19.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500))))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(40.00),
                                        right: getHorizontalSize(16.00)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(16.00)),
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(343.00),
                                                  child: TextFormField(
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value == "") {
                                                          return "Select Time";
                                                        }
                                                      },
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .requestFocus(
                                                                FocusNode());
                                                        onTapTimePicker(
                                                            context);
                                                      },
                                                      controller: controller
                                                          .timeController,
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "lbl_webinar_time"
                                                                  .tr
                                                                  .toUpperCase(),
                                                          labelStyle: TextStyle(
                                                              color: ColorConstant
                                                                  .gray600,
                                                              fontSize: 16),
                                                          hintText:
                                                              "lbl_00_00_am".tr,
                                                          hintStyle: AppStyle
                                                              .textStyleSofiaPromedium24,
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: ColorConstant.fromHex(
                                                                      "#33ffffff"),
                                                                  width: 1)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: ColorConstant.fromHex("#33ffffff"),
                                                                  width: 1)),
                                                          contentPadding: EdgeInsets.all(10.00)),
                                                      style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(19.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500))))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(40.00),
                                        right: getHorizontalSize(16.00)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(16.00)),
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(343.00),
                                                  child: TextFormField(
                                                      keyboardType: TextInputType
                                                          .multiline,
                                                      maxLines: null,
                                                      controller: controller
                                                          .desController,
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "lbl_webinar_desc"
                                                                  .tr
                                                                  .toUpperCase(),
                                                          labelStyle: TextStyle(
                                                              color: ColorConstant
                                                                  .gray600,
                                                              fontSize: 16),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: ColorConstant.fromHex(
                                                                      "#33ffffff"),
                                                                  width: 1)),
                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#33ffffff"), width: 1)),
                                                          contentPadding: EdgeInsets.all(10.00)),
                                                      style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(19.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500))))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(70.00),
                                        right: getHorizontalSize(16.00),
                                        bottom: getVerticalSize(20.00)),
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapBtnPublish();
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(45.00),
                                            width: getHorizontalSize(343.00),
                                            decoration: AppDecoration
                                                .textStyleSofiaPro143,
                                            child: Text("lbl_publish".tr,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textStyleSofiaPro143
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(14),
                                                        letterSpacing: 0.25,
                                                        height: 1.43))))))
                          ]))))),
    ));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.createNewScreen);
  }

  onTapTimePicker(context) async {
    TimeOfDay selectetime = TimeOfDay.now();
    final TimeOfDay? picked = await showTimePicker(
        builder: (context, child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: ColorConstant.whiteA700,
                onPrimary: Colors.black,
                surface: Colors.black,
                onSurface: ColorConstant.whiteA700,
              ),
              dialogBackgroundColor: Colors.black,
            ),
            child: child!,
          );
        },
        context: context,
        initialTime: TimeOfDay.fromDateTime(DateTime.now()));
    if (picked != null && picked != selectetime) {
      // tempDate = DateFormat("hh:mm")
      //     .parse(picked.hour.toString() + ":" + picked.minute.toString());
      // log('temp data=>${tempDate.toString()}');
      // var dateFormat = DateFormat("h:mm a");

      // controller.timeController.text = dateFormat.format(tempDate);
      tempDate = DateTime(pickedDate!.year, pickedDate!.month, pickedDate!.day,
          picked.hour, picked.minute);
      final format = DateFormat.jm(); //"6:00 AM"
      controller.timeController.text = format.format(tempDate);
      log('New Format of Time=>${tempDate}');
    }
  }

  onTapSelectDate(context) async {
    pickedDate = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(DateTime.now().year),
      lastDate: new DateTime(DateTime.now().year, 12),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: ColorConstant.whiteA700,
              onPrimary: Colors.black,
              surface: Colors.black,
              onSurface: ColorConstant.whiteA700,
            ),
            dialogBackgroundColor: Colors.black,
          ),
          child: child!,
        );
      },
    );
    log('Only Picked=>${pickedDate.toString()}');

    if (pickedDate != null) {
      controller.dateController.text =
          "${pickedDate?.day}/${pickedDate?.month}/${pickedDate?.year}";
      dateFormatData = pickedDate!;
    }
  }

  onTapBtnPublish() {
    if (formKey.currentState!.validate()) {
      BookSpace2Model postWebinarlistReq = BookSpace2Model();
      postWebinarlistReq.webinarLink = controller.linkController.text;
      // print(postWebinarlistReq.webinarLink);
      postWebinarlistReq.userId = Get.find<PrefUtils>().getUserid();
      postWebinarlistReq.webinarId = 101;
      postWebinarlistReq.webinarDate = dateFormatData.toString();
      log(postWebinarlistReq.webinarDate.toString());
      postWebinarlistReq.webinarTime = tempDate.toString();
      log(postWebinarlistReq.webinarTime.toString());
      log(controller.desController.text);
      postWebinarlistReq.webinarDescription = controller.desController.text;
      log(postWebinarlistReq.webinarDescription.toString());
      //Object decodeString = jsonEncode(postWebinarlistReq);
      // print(decodeString);
      controller.callCreateWebinarlist(
        postWebinarlistReq.toJson(),
        successCall: _onCreateWebinarlistSuccess,
        errCall: _onCreateWebinarlistError,
      );
    }
  }

  void _onCreateWebinarlistSuccess() async {
    // webinarController.callDisplayWebinarlist();
    await Get.toNamed(AppRoutes.successBulletin1Screen);
  }

  void _onCreateWebinarlistError() {}
}
