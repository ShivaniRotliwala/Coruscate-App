import '../controller/book_space1_controller.dart';
import '../models/group84_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';

class Group84ItemWidget extends StatelessWidget {
  Group84ItemWidget(this.group84ItemModelObj);

  Group84ItemModel group84ItemModelObj;

  var controller = Get.find<BookSpace1Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            20.00,
          ),
          bottom: getVerticalSize(
            20.00,
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
                "lbl_subject".tr.toUpperCase(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.textStyleSofiaPromedium10.copyWith(
                  fontSize: getFontSize(
                    10,
                  ),
                  letterSpacing: 1.50,
                  height: 1.60,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  16.00,
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
                      "lbl_subject".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textStyleSofiaPromedium24.copyWith(
                        fontSize: getFontSize(
                          24,
                        ),
                        letterSpacing: 0.18,
                        height: 1.00,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      343.00,
                    ),
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        10.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
