import 'dart:developer';

import 'package:coruscate/data/models/meetingListModel/post_meetinglist_req.dart';
import 'package:coruscate/presentation/select_space_screen/controller/select_space_controller.dart';
import 'package:coruscate/presentation/select_space_screen/models/select_space_item_model.dart';
import 'package:coruscate/presentation/select_space_screen/select_space_screen.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'controller/book_space_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookSpaceScreen extends GetWidget<BookSpaceController> {
  final formKey = GlobalKey<FormState>();
  late DateTime dateFormatData;
  late DateTime tempDate;
  DateTime? pickedDate;
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
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(20.00)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(131.00),
                                              child: Text("lbl_book_space".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textStyleSofiaPromedium48
                                                      .copyWith(
                                                          fontSize:
                                                              getFontSize(48),
                                                          height: 1.17))),
                                          Container(
                                              width: getHorizontalSize(202.00),
                                              margin: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(26.00),
                                                  bottom:
                                                      getVerticalSize(16.00)),
                                              child: Container(
                                                height: getVerticalSize(96.00),
                                                width:
                                                    getHorizontalSize(135.00),
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: 2,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 5,
                                                                right: 5),
                                                        child: Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Image.asset(
                                                                ImageConstant
                                                                    .imgRectangle18,
                                                                height:
                                                                    getVerticalSize(
                                                                        96.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        135.00),
                                                                fit: BoxFit
                                                                    .fill)),
                                                      );
                                                    }),
                                              ))
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
                                          Container(
                                              child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value == "") {
                                                      return "Enetr Meeting Title";
                                                    }
                                                  },
                                                  // inputFormatters: [
                                                  //   FilteringTextInputFormatter
                                                  //       .digitsOnly
                                                  // ],
                                                  controller: controller
                                                      .meetingTitleController,
                                                  // keyboardType:
                                                  //     TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText: "MEETING_TITLE"
                                                          .tr
                                                          .toUpperCase(),
                                                      labelStyle: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: 16),
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
                                                          EdgeInsets.all(
                                                              10.00)),
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(20.0),
                                                      fontFamily: 'Sofia Pro',
                                                      fontWeight: FontWeight.w500)))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(42.00),
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
                                                            context);
                                                      },
                                                      controller: controller
                                                          .dateController,
                                                      readOnly: true,
                                                      decoration: InputDecoration(
                                                          labelText: "lbl_date"
                                                              .tr
                                                              .toUpperCase(),
                                                          labelStyle: TextStyle(
                                                              color: ColorConstant
                                                                  .gray600,
                                                              fontSize: 16),
                                                          hintText:
                                                              "lbl_mm_dd_yyyy"
                                                                  .tr,
                                                          hintStyle: AppStyle
                                                              .textStyleSofiaPromedium24,
                                                          border:
                                                              OutlineInputBorder(),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: ColorConstant.fromHex(
                                                                      "#33ffffff"),
                                                                  width: 1)),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: ColorConstant.fromHex("#33ffffff"),
                                                                      width: 1)),
                                                          contentPadding: EdgeInsets.all(10.00)),
                                                      style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(20.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500))))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(39.00),
                                        right: getHorizontalSize(16.00)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(16.00)),
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(160.00),
                                                  child: TextFormField(
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value == "") {
                                                          return "Select Time";
                                                        }
                                                      },
                                                      autofocus: false,
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .requestFocus(
                                                                FocusNode());
                                                        onTapTimePicker(
                                                            context, "from");
                                                        FocusScope.of(context)
                                                            .requestFocus(
                                                                FocusNode());
                                                      },
                                                      controller: controller
                                                          .timeFromController,
                                                      readOnly: true,
                                                      decoration: InputDecoration(
                                                          labelText: "lbl_from"
                                                              .tr
                                                              .toUpperCase(),
                                                          labelStyle: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray600,
                                                              fontSize: 16),
                                                          hintText:
                                                              "lbl_00_00_am".tr,
                                                          hintStyle: AppStyle
                                                              .textStyleSofiaPromedium24
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          24.0),
                                                                  color: ColorConstant
                                                                      .whiteA700),
                                                          border:
                                                              OutlineInputBorder(),
                                                          enabledBorder:
                                                              OutlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#33ffffff"), width: 1)),
                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#33ffffff"), width: 1)),
                                                          contentPadding: EdgeInsets.all(10.00)),
                                                      style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(24.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500)))),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(16.00)),
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(160.00),
                                                  child: TextFormField(
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value == "") {
                                                          return "Select Time";
                                                        }
                                                      },
                                                      autofocus: false,
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .requestFocus(
                                                                FocusNode());
                                                        onTapTimePicker(
                                                            context, "to");
                                                        FocusScope.of(context)
                                                            .requestFocus(
                                                                FocusNode());
                                                      },
                                                      controller: controller
                                                          .timeToController,
                                                      readOnly: true,
                                                      decoration: InputDecoration(
                                                          labelText: "lbl_to"
                                                              .tr
                                                              .toUpperCase(),
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelStyle: TextStyle(
                                                              color: ColorConstant
                                                                  .gray600,
                                                              fontSize: 16),
                                                          hintText:
                                                              "lbl_00_00_am".tr,
                                                          hintStyle: AppStyle.textStyleSofiaPromedium24.copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      24.0),
                                                              color: ColorConstant
                                                                  .whiteA700),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: ColorConstant.fromHex("#33ffffff"),
                                                                  width: 1)),
                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#33ffffff"), width: 1)),
                                                          contentPadding: EdgeInsets.all(10.00)),
                                                      style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(24.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500))))
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
                                          Container(
                                              child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value == "") {
                                                      return "Enetr Members";
                                                    }
                                                  },
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .digitsOnly
                                                  ],
                                                  controller: controller
                                                      .totalMemberController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText: "lbl_members"
                                                          .tr
                                                          .toUpperCase(),
                                                      labelStyle: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: 16),
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
                                                          EdgeInsets.all(
                                                              10.00)),
                                                  style: TextStyle(
                                                      color: ColorConstant.whiteA700,
                                                      fontSize: getFontSize(20.0),
                                                      fontFamily: 'Sofia Pro',
                                                      fontWeight: FontWeight.w500)))
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
                                          Container(
                                              child: TextFormField(
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value == "") {
                                                      return "Enetr Meeting Title";
                                                    }
                                                  },
                                                  // inputFormatters: [
                                                  //   FilteringTextInputFormatter
                                                  //       .digitsOnly
                                                  // ],
                                                  controller: controller
                                                      .meetingDescController,
                                                  // keyboardType:
                                                  //     TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText:
                                                          "MEETING_DESCRIPTION"
                                                              .tr
                                                              .toUpperCase(),
                                                      labelStyle: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: 16),
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
                                                      contentPadding: EdgeInsets.all(
                                                          10.00)),
                                                  style: TextStyle(
                                                      color: ColorConstant.whiteA700,
                                                      fontSize: getFontSize(20.0),
                                                      fontFamily: 'Sofia Pro',
                                                      fontWeight: FontWeight.w500)))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(40.00),
                                        right: getHorizontalSize(16.00),
                                        bottom: getVerticalSize(20.00)),
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapBtnNext(context);
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(45.00),
                                            width: getHorizontalSize(343.00),
                                            decoration: AppDecoration
                                                .textStyleSofiaPro143,
                                            child: Text("lbl_next".tr,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textStyleSofiaPro143)))))
                          ]))))),
    ));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.createNewScreen);
  }

  onTapBtnNext(context) {
    if (formKey.currentState!.validate()) {
      // log('date=>${controller.dateController.text}');
      // log('time From=>${controller.timeFromController.text}');
      // log('time To=>${controller.timeToController.text}');
      // log('total Capa=>${controller.totalMemberController.text}');
      //////////////////////
      // controller.postMeetingListReq.meetingDate =
      //     controller.dateController.text;
      // log('date=>${controller.postMeetingListReq.meetingDate}');
      // controller.postMeetingListReq.meetingFrom =
      //     controller.timeFromController.text;
      // log('time From=>${controller.postMeetingListReq.meetingFrom}');
      /////////////////////////
      // spib.dateFromPrev.value = controller.dateController.text;
      // spib.timeFromPrev.value = controller.timeFromController.text;
      // SelectSpaceController selectSpaceObj = SelectSpaceController();
      // selectSpaceObj.callCreateSpacelist();
      Get.toNamed(AppRoutes.selectSpaceScreen);
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) =>
      //           SelectSpaceScreen(controller.postMeetingListReq),
      //     ));
      // controller.timeFromController.clear();
      // controller.dateController.clear();
      // controller.timeToController.clear();
      // controller.totalMemberController.clear();

    }
  }

  onTapTimePicker(context, value) async {
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
      // DateTime tempDate = DateFormat("hh:mm")
      //     .parse(picked.hour.toString() + ":" + picked.minute.toString());
      // var dateFormat = DateFormat("h:mm a");
      tempDate = DateTime(pickedDate!.year, pickedDate!.month, pickedDate!.day,
          picked.hour, picked.minute);
      final format = DateFormat.Hm();
      if (value == "from") {
        controller.timeFromController.text = format.format(tempDate);
      } else {
        controller.timeToController.text = format.format(tempDate);
      }
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
    print(pickedDate.toString());
    if (pickedDate != null) {
      var myFormat = DateFormat('yyyy-MM-dd');
      late String newDate = myFormat.format(pickedDate!);
      log('Check New Date=>${newDate}');
      controller.dateController.text = newDate;
      // "${pickedDate!.year}-${pickedDate!.month}-${pickedDate!.day}";
      //     "${picked.day}/${picked.month}/${picked.year}";
      // dateFormatData = picked;
    }
  }
}
