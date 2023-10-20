import '../controller/webinar2_controller.dart';
import '../models/webinar2_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Webinar2ItemWidget extends StatelessWidget {
  Webinar2ItemWidget(this.webinar2ItemModelObj);

  Webinar2ItemModel webinar2ItemModelObj;

  var controller = Get.find<Webinar2Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getVerticalSize(
          6.00,
        ),
        bottom: getVerticalSize(
          6.00,
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
                32.00,
              ),
              bottom: getVerticalSize(
                32.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    //"IndusInd Bank".tr,
                    webinar2ItemModelObj.orgName.toString(),
                    overflow: TextOverflow.ellipsis,
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
                      4.00,
                    ),
                  ),
                  child: Text(
                    // "msg_lorem_ipsum_is2".tr,
                    webinar2ItemModelObj.orgDesc.toString(),
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.textStyleSofiaPro123.copyWith(
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
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Container(
                //     height: getVerticalSize(
                //       140.00,
                //     ),
                //     width: getHorizontalSize(
                //       145.00,
                //     ),
                //     // child: SvgPicture.asset(
                //     //   ImageConstant.imgRectangle99,
                //     //   fit: BoxFit.fill,
                //     // ),
                //   ),
                // ),
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
                    child: Image.asset(
                      ImageConstant.imgIndus,
                      height: getSize(
                        500.00,
                      ),
                      width: double.infinity,
                      fit: BoxFit.fill,
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
