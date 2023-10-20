import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

import '../controller/homepage_controller.dart';
import '../models/homepage_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';

class HomepageItemWidget extends StatelessWidget {
  HomepageItemWidget(this.homepageItemModelObj);

  HomepageItemModel homepageItemModelObj;

  var controller = Get.find<HomepageController>();

  //For Date Formatting
  late DateTime dt =
      DateTime.parse(homepageItemModelObj.MeetingDate.toString());
  late String formatedDate = "${dt.year}-${dt.month}-${dt.day}";
  late var finalDateFormat = Jiffy(formatedDate).MMMd;

//For From Time Formatting
  late String fromDateTime =
      '${homepageItemModelObj.MeetingDate} ${homepageItemModelObj.MeetingFromTime}:00';

  late DateTime fromData = DateTime.parse(fromDateTime);
  late String formattedFromTime = DateFormat.jm().format(fromData);

  //For To Time Formatting
  late String toDateTime =
      '${homepageItemModelObj.MeetingDate} ${homepageItemModelObj.MeetingToTime}:00';

  late DateTime toData = DateTime.parse(toDateTime);
  late String formattedToTime = DateFormat.jm().format(toData);
  //Final DateTime Formatted String

  late String finalDisplay =
      '${finalDateFormat} | ${formattedFromTime} - ${formattedToTime}';

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
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
                    14.00,
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
                        //"msg_15_nov_2_30".tr,
                        finalDisplay,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.textStyleSofiaPro122.copyWith(
                          fontSize: getFontSize(
                            12,
                          ),
                          letterSpacing: 0.40,
                          height: 1.33,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          10.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              122.00,
                            ),
                            margin: EdgeInsets.only(
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Text(
                              //"msg_nural_engine_di".tr,
                              homepageItemModelObj.MeetingTitle.toString(),
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.textStyleSofiaPromedium201.copyWith(
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
                              //"msg_lorem_ipsum_is".tr,
                              homepageItemModelObj.MeetingDesc.toString(),
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
                  ],
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    17.00,
                  ),
                ),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/transbubble.gif',
                  image: homepageItemModelObj.MeetingImg.toString(),
                  height: getVerticalSize(163.00),
                  width: getHorizontalSize(145.00),
                  fit: BoxFit.fill,
                ),
                // Image.network(homepageItemModelObj.MeetingImg.toString(),
                //     //"https://firebasestorage.googleapis.com/v0/b/coruscateapp-49c43.appspot.com/o/img_rectangle9_7.png?alt=media&token=184817cd-6704-4826-b148-a47036c2cbbd",
                //     //ImageConstant.imgRectangle91,
                //     height: getVerticalSize(
                //       161.00,
                //     ),
                //     width: getHorizontalSize(
                //       145.00,
                //     ),
                //     fit: BoxFit.fill,
                //     //     frameBuilder:
                //     //         (context, child, frame, wasSynchronouslyLoaded) {
                //     //   return child;
                //     // },
                //     loadingBuilder: (context, child, loadingProgress) {
                //   if (loadingProgress == null) return child;
                //   return Center(
                //     child: CircularProgressIndicator(),
                //   );
                //   // return const Center(
                //   //     child: Text(
                //   //   'Loading...',
                //   //   style: TextStyle(color: Colors.white),
                //   // ));
                // }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
