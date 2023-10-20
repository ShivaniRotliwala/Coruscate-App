import 'package:coruscate/core/app_export.dart';
import 'package:coruscate/presentation/webinar3_screen/controller/webinar3_controller.dart';
import 'package:coruscate/presentation/webinar3_screen/models/webinar3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Webinar3ItemWidget extends StatelessWidget {
  Webinar3ItemWidget(this.webinar3ItemModelObj);

  Webinar3ItemModel webinar3ItemModelObj;

  var controller = Get.find<Webinar3Controller>();

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
                    webinar3ItemModelObj.webinarDate.toString(),
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
                    webinar3ItemModelObj.webinarLink.toString(),
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
