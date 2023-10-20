import 'package:intl/intl.dart';

import 'controller/book_space1_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookSpace1Screen extends GetWidget<BookSpace1Controller> {
   final formKey = GlobalKey<FormState>();
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
                          decoration:
                              BoxDecoration(color: ColorConstant.black900),
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
                                Container(
                                    width: getHorizontalSize(163.00),
                                    margin: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        top: getVerticalSize(20.00),
                                        right: getHorizontalSize(16.00)),
                                    child: Text("lbl_bulletin_board".tr,
                                        maxLines: null,
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
                                                      top:
                                                          getVerticalSize(16.00)),
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          343.00),
                                                      child: TextFormField(
                                                          onTap: () {},
                                                            validator: (value) {
                                                          if (value == null ||
                                                              value == "") {
                                                            return "Enter Subject";
                                                          }
                                                        },
                                                          controller: controller.subjectController,
                                                          decoration: InputDecoration(
                                                              labelText: "lbl_subject"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              labelStyle: TextStyle(
                                                                  color: ColorConstant
                                                                      .gray600,
                                                                  fontSize: 16),
                                                              border:
                                                                  OutlineInputBorder(),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: ColorConstant.fromHex(
                                                                          "#33ffffff"),
                                                                      width: 1)),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                      borderSide: BorderSide(color: ColorConstant.fromHex("#33ffffff"), width: 1)),
                                                              contentPadding: EdgeInsets.all(10.00)),
                                                          style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(20.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500))))
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
                                                      top:
                                                          getVerticalSize(16.00)),
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          343.00),
                                                      child: TextFormField(
                                                          maxLines: null,
                                                          
                                                          keyboardType: TextInputType
                                                              .multiline,
                                                          onTap: () {

                                                          },
                                                          controller: controller.bodyController,
                                                          decoration: InputDecoration(
                                                              labelText: "lbl_body"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              border:
                                                                  OutlineInputBorder(),
                                                              labelStyle: TextStyle(
                                                                  color: ColorConstant
                                                                      .gray600,
                                                                  fontSize: 16),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: ColorConstant.fromHex(
                                                                          "#33ffffff"),
                                                                      width: 1)),
                                                              focusedBorder:
                                                                  OutlineInputBorder(borderSide: BorderSide(color: ColorConstant.fromHex("#33ffffff"), width: 1)),
                                                              contentPadding: EdgeInsets.all(10.00)),
                                                          style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(20.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500))))
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
                                                      top:
                                                          getVerticalSize(16.00)),
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          343.00),
                                                      child: TextFormField(
                                                         validator: (value) {
                                                          if (value == null ||
                                                              value == "") {
                                                            return "Select Date";
                                                          }
                                                        },
                                                        controller: controller.dateController,
                                                          onTap: () {
                                                            FocusScope.of(context)
                                                                .requestFocus(
                                                                    FocusNode());
                                                                    onTapSelectDate(context);
                                                                    
                                                          },
                                                          readOnly: true,
                                                          decoration: InputDecoration(
                                                            border: OutlineInputBorder(),
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
                                                      top:
                                                          getVerticalSize(16.00)),
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          160.00),
                                                        
                                                      child: TextFormField(
                                                        readOnly: true,
                                                         validator: (value) {
                                                          if (value == null ||
                                                              value == "") {
                                                            return "Select Time";
                                                          }
                                                        },
                                                        
                                                        controller: controller.fromTimeController,
                                                          onTap: () {
                                                            FocusScope.of(context)
                                                                .requestFocus(
                                                                    FocusNode());
                                                                    onTapTimePicker(context, "from");
                                                          },
                                                          decoration: InputDecoration(
                                                            border: OutlineInputBorder(),
                                                              labelText: "lbl_from"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              labelStyle: TextStyle(
                                                                  color: ColorConstant
                                                                      .gray600,
                                                                  fontSize: 16),
                                                              hintText:
                                                                  "lbl_00_00_am"
                                                                      .tr,
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
                                                          style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(24.0), fontFamily: 'Sofia Pro', fontWeight: FontWeight.w500)))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top:
                                                          getVerticalSize(16.00)),
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          160.00),
                                                      child: TextFormField(
                                                        readOnly: true,
                                                         validator: (value) {
                                                          if (value == null ||
                                                              value == "") {
                                                            return "Select Time";
                                                          }
                                                        },
                                                        controller: controller.toTimeController,
                                                          onTap: () {
                                                            FocusScope.of(context)
                                                                .requestFocus(
                                                                    FocusNode());
                                                                    onTapTimePicker(context, "to");
                                                          },
                                                          decoration: InputDecoration(
                                                            border: OutlineInputBorder(),
                                                              hintText: "lbl_00_00_am"
                                                                  .tr,
                                                              hintStyle: AppStyle.textStyleSofiaPromedium24.copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          24.0),
                                                                  color: ColorConstant
                                                                      .whiteA700),
                                                              labelText: "lbl_to"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              labelStyle: TextStyle(
                                                                  color: ColorConstant
                                                                      .gray600,
                                                                  fontSize: 16),
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
      DateTime tempDate = DateFormat("hh:mm")
          .parse(picked.hour.toString() + ":" + picked.minute.toString());
      var dateFormat = DateFormat("h:mm a");
      if (value == "from") {
        controller.fromTimeController.text = dateFormat.format(tempDate);
      } else {
        controller.toTimeController.text = dateFormat.format(tempDate);
      }
    }
  }

  onTapSelectDate(context) async {
    DateTime? picked = await showDatePicker(
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
    print(picked.toString());
    if (picked != null) {
      controller.dateController.text =
          "${picked.day}/${picked.month}/${picked.year}";
    }
  }

  onTapBtnPublish() {
    if(formKey.currentState!.validate())
    {
   Get.toNamed(AppRoutes.successBulletinScreen);
   controller.subjectController.clear();
   controller.bodyController.clear();
   controller.toTimeController.clear();
   controller.fromTimeController.clear();
   controller.dateController.clear();
    }
 
  }
}
