// import 'dart:ffi';

import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

import '../controller/webinar_controller.dart';
import '../models/webinar_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebinarItemWidget extends StatelessWidget {
  WebinarItemWidget(this.webinarItemModelObj);

  WebinarItemModel webinarItemModelObj;

  var controller = Get.find<WebinarController>();

  late DateTime dt = DateTime.parse(webinarItemModelObj.webinarDate.toString());
  late DateTime tm = DateTime.parse(webinarItemModelObj.webinarTime.toString());
  late String mon = "${dt.month}";
  late String day = "${dt.day}";
  late String yr = "${dt.year}";
  late String formatedDate = "${dt.year}-${dt.month}-${dt.day}";
  late var finalDateFormat = Jiffy(formatedDate).MMMMd;
  late String formattedTime = DateFormat.jm().format(tm);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                14.00,
              ),
              bottom: getVerticalSize(
                24.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    120.00,
                  ),
                  margin: EdgeInsets.only(
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    //"msg_15_november_3_3".tr,
                    finalDateFormat,
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
                Container(
                  width: getHorizontalSize(
                    120.00,
                  ),
                  margin: EdgeInsets.only(
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    //"msg_15_november_3_3".tr,

                    formattedTime,
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
                Container(
                  width: getHorizontalSize(
                    159.00,
                  ),
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      6.00,
                    ),
                  ),
                  child: Text(
                    //"msg_https_docs_go".tr,
                    webinarItemModelObj.webinarLink.toString(),
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.textStyleSofiaPro128.copyWith(
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
          Container(
            height: getVerticalSize(
              140.00,
            ),
            width: getHorizontalSize(
              145.00,
            ),
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                17.00,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(
                      140.00,
                    ),
                    width: getHorizontalSize(
                      145.00,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.imgRectangle98,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        40.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                      bottom: getVerticalSize(
                        40.00,
                      ),
                    ),
                    child: Container(
                      height: getSize(
                        44.00,
                      ),
                      width: getSize(
                        44.00,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.imgAirplay1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
