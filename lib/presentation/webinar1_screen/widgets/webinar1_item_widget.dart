import '../controller/webinar1_controller.dart';
import '../models/webinar1_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Webinar1ItemWidget extends StatelessWidget {
  Webinar1ItemWidget(this.webinar1ItemModelObj);

  Webinar1ItemModel webinar1ItemModelObj;

  var controller = Get.find<Webinar1Controller>();

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
                15.00,
              ),
              bottom: getVerticalSize(
                15.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
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
                        // "lbl_learn_figma".tr,
                        webinar1ItemModelObj.learnSubjectName.toString(),
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
                        //"msg_lorem_ipsum_is".tr,
                        webinar1ItemModelObj.learnSubjectDesc.toString(),
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
                Container(
                  width: getHorizontalSize(
                    119.00,
                  ),
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      26.00,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  // child: Row
                  // (
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisSize: MainAxisSize.max,
                  //   children: [
                  //     ClipRRect(
                  //       borderRadius: BorderRadius.circular(
                  //         getSize(
                  //           12.00,
                  //         ),
                  //       ),
                  //       child: Image.asset(
                  //         ImageConstant.imgUnsplashao21ym1,
                  //         height: getSize(
                  //           24.00,
                  //         ),
                  //         width: getSize(
                  //           24.00,
                  //         ),
                  //         fit: BoxFit.fill,
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.only(
                  //         left: getHorizontalSize(
                  //           10.00,
                  //         ),
                  //         top: getVerticalSize(
                  //           4.00,
                  //         ),
                  //         bottom: getVerticalSize(
                  //           4.00,
                  //         ),
                  //       ),
                  //       child: Text(
                  //         "lbl_alena_culhane".tr,
                  //         overflow: TextOverflow.ellipsis,
                  //         textAlign: TextAlign.left,
                  //         style: AppStyle.textStyleSofiaPro123.copyWith(
                  //           fontSize: getFontSize(
                  //             12,
                  //           ),
                  //           letterSpacing: 0.40,
                  //           height: 1.33,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                89.00,
              ),
              top: getVerticalSize(
                44.00,
              ),
              right: getHorizontalSize(
                18.00,
              ),
              bottom: getVerticalSize(
                41.00,
              ),
            ),
            // child: Container(
            //   height: getSize(
            //     55.00,
            //   ),
            //   width: getSize(
            //     55.00,
            //   ),
            //   child: SvgPicture.asset(
            //     ImageConstant.imgGroup37,
            //     fit: BoxFit.fill,
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
