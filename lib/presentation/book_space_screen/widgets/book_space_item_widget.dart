import '../controller/book_space_controller.dart';
import '../models/book_space_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookSpaceItemWidget extends StatelessWidget {
  BookSpaceItemWidget(this.bookSpaceItemModelObj);

  BookSpaceItemModel bookSpaceItemModelObj;

  var controller = Get.find<BookSpaceController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          8.00,
        ),
        bottom: getVerticalSize(
          8.00,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: getHorizontalSize(
              194.00,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: getSize(
                    54.00,
                  ),
                  width: getSize(
                    54.00,
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.gray901,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          27.00,
                        ),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                21.00,
                              ),
                              top: getVerticalSize(
                                15.00,
                              ),
                              right: getHorizontalSize(
                                22.00,
                              ),
                              bottom: getVerticalSize(
                                15.00,
                              ),
                            ),
                            child: Text(
                              "2",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStyleSofiaProlight20.copyWith(
                                fontSize: getFontSize(
                                  20,
                                ),
                                letterSpacing: 0.15,
                                height: 1.20,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                21.00,
                              ),
                              top: getVerticalSize(
                                15.00,
                              ),
                              right: getHorizontalSize(
                                22.00,
                              ),
                              bottom: getVerticalSize(
                                15.00,
                              ),
                            ),
                            child: Text(
                              "lbl_2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.textStyleSofiaProlight20.copyWith(
                                fontSize: getFontSize(
                                  20,
                                ),
                                letterSpacing: 0.15,
                                height: 1.20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      16.00,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray901,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        27.00,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            21.00,
                          ),
                          top: getVerticalSize(
                            15.00,
                          ),
                          right: getHorizontalSize(
                            21.00,
                          ),
                          bottom: getVerticalSize(
                            15.00,
                          ),
                        ),
                        child: Text(
                          "lbl_3".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.textStyleSofiaProlight20.copyWith(
                            fontSize: getFontSize(
                              20,
                            ),
                            letterSpacing: 0.15,
                            height: 1.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      16.00,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray901,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        27.00,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            21.00,
                          ),
                          top: getVerticalSize(
                            15.00,
                          ),
                          right: getHorizontalSize(
                            21.00,
                          ),
                          bottom: getVerticalSize(
                            15.00,
                          ),
                        ),
                        child: Text(
                          "lbl_4".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.textStyleSofiaProlight20.copyWith(
                            fontSize: getFontSize(
                              20,
                            ),
                            letterSpacing: 0.15,
                            height: 1.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getSize(
              54.00,
            ),
            width: getSize(
              54.00,
            ),
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getSize(
                      54.00,
                    ),
                    width: getSize(
                      54.00,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.imgGroup56,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        21.00,
                      ),
                      top: getVerticalSize(
                        15.00,
                      ),
                      right: getHorizontalSize(
                        21.00,
                      ),
                      bottom: getVerticalSize(
                        15.00,
                      ),
                    ),
                    child: Text(
                      "lbl_5".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textStyleSofiaProlight20.copyWith(
                        fontSize: getFontSize(
                          20,
                        ),
                        letterSpacing: 0.15,
                        height: 1.20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray901,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  27.00,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      21.00,
                    ),
                    top: getVerticalSize(
                      15.00,
                    ),
                    right: getHorizontalSize(
                      21.00,
                    ),
                    bottom: getVerticalSize(
                      15.00,
                    ),
                  ),
                  child: Text(
                    "lbl_6".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.textStyleSofiaProlight20.copyWith(
                      fontSize: getFontSize(
                        20,
                      ),
                      letterSpacing: 0.15,
                      height: 1.20,
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
