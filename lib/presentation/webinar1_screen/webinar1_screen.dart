import 'package:coruscate/core/app_export.dart';
import 'package:coruscate/presentation/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:coruscate/presentation/webinar1_screen/controller/webinar1_controller.dart';
import 'package:coruscate/presentation/webinar1_screen/models/webinar1_item_model.dart';
import 'package:coruscate/presentation/webinar1_screen/widgets/webinar1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/math_utils.dart';

class Webinar1Screen extends GetWidget<Webinar1Controller> {
  // const Webinar1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Learn"),
          actions: [
            Padding(
              padding: EdgeInsets.all(
                10.00,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getSize(
                    14.00,
                  ),
                ),
                child: GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.profileScreen),
                  child: Image.network(
                    Get.find<PrefUtils>().getUserImagevalue(),
                    //ImageConstant.imgUnsplash7uommz,
                    height: getSize(
                      28.00,
                    ),
                    width: getSize(
                      34.00,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              17.00,
            ),
            top: getVerticalSize(
              12.00,
            ),
            right: getHorizontalSize(
              17.00,
            ),
          ),
          child: Obx(
            () => ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount:
                  controller.webinar1ModelObj.value.webinar1ItemList.length,
              itemBuilder: (context, index) {
                Webinar1ItemModel model =
                    controller.webinar1ModelObj.value.webinar1ItemList[index];
                return Webinar1ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.max,
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.only(
        //         left: getHorizontalSize(
        //           20.00,
        //         ),
        //         top: getVerticalSize(
        //           15.00,
        //         ),
        //         bottom: getVerticalSize(
        //           15.00,
        //         ),
        //       ),
        //       child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Column(
        //             mainAxisSize: MainAxisSize.min,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Padding(
        //                 padding: EdgeInsets.only(
        //                   right: getHorizontalSize(
        //                     10.00,
        //                   ),
        //                 ),
        //                 child: Text(
        //                   "lbl_learn_figma".tr,
        //                   overflow: TextOverflow.ellipsis,
        //                   textAlign: TextAlign.left,
        //                   style: AppStyle.textStyleSofiaPromedium201.copyWith(
        //                     fontSize: getFontSize(
        //                       20,
        //                     ),
        //                     letterSpacing: 0.15,
        //                     height: 1.20,
        //                   ),
        //                 ),
        //               ),
        //               Container(
        //                 width: getHorizontalSize(
        //                   159.00,
        //                 ),
        //                 margin: EdgeInsets.only(
        //                   top: getVerticalSize(
        //                     4.00,
        //                   ),
        //                 ),
        //                 child: Text(
        //                   "msg_lorem_ipsum_is".tr,
        //                   maxLines: null,
        //                   textAlign: TextAlign.left,
        //                   style: AppStyle.textStyleSofiaPro123.copyWith(
        //                     fontSize: getFontSize(
        //                       12,
        //                     ),
        //                     letterSpacing: 0.40,
        //                     height: 1.33,
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Container(
        //             width: getHorizontalSize(
        //               125.00,
        //             ),
        //             margin: EdgeInsets.only(
        //               top: getVerticalSize(
        //                 26.00,
        //               ),
        //               right: getHorizontalSize(
        //                 10.00,
        //               ),
        //             ),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               mainAxisSize: MainAxisSize.max,
        //               children: [
        //                 ClipRRect(
        //                   borderRadius: BorderRadius.circular(
        //                     getSize(
        //                       12.00,
        //                     ),
        //                   ),
        //                   child: Image.asset(
        //                     ImageConstant.imgUnsplashao21ym1,
        //                     height: getSize(
        //                       24.00,
        //                     ),
        //                     width: getSize(
        //                       24.00,
        //                     ),
        //                     fit: BoxFit.fill,
        //                   ),
        //                 ),
        //                 Padding(
        //                   padding: EdgeInsets.only(
        //                     left: getHorizontalSize(
        //                       10.00,
        //                     ),
        //                     top: getVerticalSize(
        //                       4.00,
        //                     ),
        //                     bottom: getVerticalSize(
        //                       4.00,
        //                     ),
        //                   ),
        //                   child: Text(
        //                     "lbl_alena_culhane".tr,
        //                     overflow: TextOverflow.ellipsis,
        //                     textAlign: TextAlign.left,
        //                     style: AppStyle.textStyleSofiaPro123.copyWith(
        //                       fontSize: getFontSize(
        //                         12,
        //                       ),
        //                       letterSpacing: 0.40,
        //                       height: 1.33,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.only(
        //         left: getHorizontalSize(
        //           89.00,
        //         ),
        //         top: getVerticalSize(
        //           44.00,
        //         ),
        //         right: getHorizontalSize(
        //           18.00,
        //         ),
        //         bottom: getVerticalSize(
        //           41.00,
        //         ),
        //       ),
        //       child: Container(
        //         height: getSize(
        //           55.00,
        //         ),
        //         width: getSize(
        //           55.00,
        //         ),
        //         child: SvgPicture.asset(
        //           ImageConstant.imgGroup37,
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            backgroundColor: ColorConstant.indigoA200,
            onPressed: () {
              Get.toNamed(AppRoutes.createNewScreen);
            },
            child: Container(
              height: getVerticalSize(
                25.00,
              ),
              width: getHorizontalSize(
                25.00,
              ),
              child: SvgPicture.asset(
                ImageConstant.imgGroup2,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}


// import '../webinar1_screen/widgets/webinar1_item_widget.dart';
// import 'controller/webinar1_controller.dart';
// import 'models/webinar1_item_model.dart';
// import 'package:coruscate/core/app_export.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class Webinar1Screen extends GetWidget<Webinar1Controller> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.black900,
//         body: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 width: size.width,
//                 child: SingleChildScrollView(
//                   child: Container(
//                     height: getVerticalSize(
//                       772.00,
//                     ),
//                     width: size.width,
//                     color: ColorConstant.black900,
//                     child: Stack(
//                       alignment: Alignment.bottomRight,
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: ColorConstant.black900,
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.centerLeft,
//                                       child: Container(
//                                         width: double.infinity,
//                                         decoration: BoxDecoration(
//                                           color: ColorConstant.black900,
//                                         ),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.min,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.center,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           children: [
//                                             Align(
//                                               alignment: Alignment.centerLeft,
//                                               child: Container(
//                                                 width: size.width,
//                                                 margin: EdgeInsets.only(
//                                                   top: getVerticalSize(
//                                                     11.00,
//                                                   ),
//                                                   bottom: getVerticalSize(
//                                                     11.00,
//                                                   ),
//                                                 ),
//                                                 child: Padding(
//                                                   padding: EdgeInsets.only(
//                                                     left: getHorizontalSize(
//                                                       15.00,
//                                                     ),
//                                                     right: getHorizontalSize(
//                                                       16.00,
//                                                     ),
//                                                   ),
//                                                   child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Padding(
//                                                         padding:
//                                                             EdgeInsets.only(
//                                                           top: getVerticalSize(
//                                                             2.00,
//                                                           ),
//                                                           bottom:
//                                                               getVerticalSize(
//                                                             2.00,
//                                                           ),
//                                                         ),
//                                                         child: Text(
//                                                           "lbl_learn".tr,
//                                                           overflow: TextOverflow
//                                                               .ellipsis,
//                                                           textAlign:
//                                                               TextAlign.left,
//                                                           style: AppStyle
//                                                               .textStyleSofiaPro16
//                                                               .copyWith(
//                                                             fontSize:
//                                                                 getFontSize(
//                                                               16,
//                                                             ),
//                                                             letterSpacing: 0.50,
//                                                             height: 1.50,
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         width:
//                                                             getHorizontalSize(
//                                                           72.00,
//                                                         ),
//                                                         child: Row(
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           mainAxisSize:
//                                                               MainAxisSize.min,
//                                                           children: [
//                                                             Padding(
//                                                               padding:
//                                                                   EdgeInsets
//                                                                       .only(
//                                                                 top:
//                                                                     getVerticalSize(
//                                                                   2.00,
//                                                                 ),
//                                                                 bottom:
//                                                                     getVerticalSize(
//                                                                   2.00,
//                                                                 ),
//                                                               ),
//                                                               child: Container(
//                                                                 height: getSize(
//                                                                   24.00,
//                                                                 ),
//                                                                 width: getSize(
//                                                                   24.00,
//                                                                 ),
//                                                                 child:
//                                                                     SvgPicture
//                                                                         .asset(
//                                                                   ImageConstant
//                                                                       .imgMagnify,
//                                                                   fit: BoxFit
//                                                                       .fill,
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Padding(
//                                                               padding:
//                                                                   EdgeInsets
//                                                                       .only(
//                                                                 left:
//                                                                     getHorizontalSize(
//                                                                   20.00,
//                                                                 ),
//                                                               ),
//                                                               child: ClipRRect(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                   getSize(
//                                                                     14.00,
//                                                                   ),
//                                                                 ),
//                                                                 child:
//                                                                     Image.asset(
//                                                                   ImageConstant
//                                                                       .imgUnsplash7uommz,
//                                                                   height:
//                                                                       getSize(
//                                                                     28.00,
//                                                                   ),
//                                                                   width:
//                                                                       getSize(
//                                                                     28.00,
//                                                                   ),
//                                                                   fit: BoxFit
//                                                                       .fill,
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.only(
//                                         left: getHorizontalSize(
//                                           17.00,
//                                         ),
//                                         top: getVerticalSize(
//                                           12.00,
//                                         ),
//                                         right: getHorizontalSize(
//                                           17.00,
//                                         ),
//                                       ),
//                                       child: Obx(
//                                         () => ListView.builder(
//                                           physics: BouncingScrollPhysics(),
//                                           shrinkWrap: true,
//                                           itemCount: controller.webinar1ModelObj
//                                               .value.webinar1ItemList.length,
//                                           itemBuilder: (context, index) {
//                                             Webinar1ItemModel model = controller
//                                                 .webinar1ModelObj
//                                                 .value
//                                                 .webinar1ItemList[index];
//                                             return Webinar1ItemWidget(
//                                               model,
//                                             );
//                                           },
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.bottomRight,
//                           child: Container(
//                             height: getSize(
//                               50.00,
//                             ),
//                             width: getSize(
//                               50.00,
//                             ),
//                             margin: EdgeInsets.only(
//                               left: getHorizontalSize(
//                                 17.00,
//                               ),
//                               top: getVerticalSize(
//                                 20.00,
//                               ),
//                               right: getHorizontalSize(
//                                 17.00,
//                               ),
//                               bottom: getVerticalSize(
//                                 20.00,
//                               ),
//                             ),
//                             child: FloatingActionButton(
//                               backgroundColor: ColorConstant.indigoA200,
//                               onPressed: () {},
//                               child: Container(
//                                 height: getVerticalSize(
//                                   25.00,
//                                 ),
//                                 width: getHorizontalSize(
//                                   25.00,
//                                 ),
//                                 child: SvgPicture.asset(
//                                   ImageConstant.imgGroup27,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: getVerticalSize(
//                 73.00,
//               ),
//               width: size.width,
//               color: ColorConstant.gray900,
//               child: Stack(
//                 children: [
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                         top: getVerticalSize(
//                           8.00,
//                         ),
//                         bottom: getVerticalSize(
//                           10.00,
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Align(
//                                 alignment: Alignment.center,
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                     left: getHorizontalSize(
//                                       5.00,
//                                     ),
//                                     right: getHorizontalSize(
//                                       6.00,
//                                     ),
//                                   ),
//                                   child: Container(
//                                     height: getSize(
//                                       24.00,
//                                     ),
//                                     width: getSize(
//                                       24.00,
//                                     ),
//                                     child: SvgPicture.asset(
//                                       ImageConstant.imgHome1,
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                   top: getVerticalSize(
//                                     2.00,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   "lbl_home".tr.toUpperCase(),
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.textStyleSofiaPromedium10
//                                       .copyWith(
//                                     fontSize: getFontSize(
//                                       10,
//                                     ),
//                                     letterSpacing: 1.50,
//                                     height: 1.60,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                   left: getHorizontalSize(
//                                     14.00,
//                                   ),
//                                   right: getHorizontalSize(
//                                     14.00,
//                                   ),
//                                 ),
//                                 child: Container(
//                                   height: getSize(
//                                     24.00,
//                                   ),
//                                   width: getSize(
//                                     24.00,
//                                   ),
//                                   child: SvgPicture.asset(
//                                     ImageConstant.imgAirplay,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                     top: getVerticalSize(
//                                       2.00,
//                                     ),
//                                   ),
//                                   child: Text(
//                                     "lbl_webinar".tr.toUpperCase(),
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.textStyleSofiaPromedium10
//                                         .copyWith(
//                                       fontSize: getFontSize(
//                                         10,
//                                       ),
//                                       letterSpacing: 1.50,
//                                       height: 1.60,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                   left: getHorizontalSize(
//                                     6.00,
//                                   ),
//                                   right: getHorizontalSize(
//                                     7.00,
//                                   ),
//                                 ),
//                                 child: Container(
//                                   height: getSize(
//                                     24.00,
//                                   ),
//                                   width: getSize(
//                                     24.00,
//                                   ),
//                                   child: SvgPicture.asset(
//                                     ImageConstant.imgBookopen1,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                     top: getVerticalSize(
//                                       2.00,
//                                     ),
//                                   ),
//                                   child: Text(
//                                     "lbl_learn".tr.toUpperCase(),
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.textStyleSofiaPromedium10
//                                         .copyWith(
//                                       fontSize: getFontSize(
//                                         10,
//                                       ),
//                                       letterSpacing: 1.50,
//                                       height: 1.60,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                   left: getHorizontalSize(
//                                     11.00,
//                                   ),
//                                   right: getHorizontalSize(
//                                     11.00,
//                                   ),
//                                 ),
//                                 child: Container(
//                                   height: getSize(
//                                     24.00,
//                                   ),
//                                   width: getSize(
//                                     24.00,
//                                   ),
//                                   child: SvgPicture.asset(
//                                     ImageConstant.imgLink1,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                     top: getVerticalSize(
//                                       2.00,
//                                     ),
//                                   ),
//                                   child: Text(
//                                     "lbl_tie_ups".tr.toUpperCase(),
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.textStyleSofiaPromedium10
//                                         .copyWith(
//                                       fontSize: getFontSize(
//                                         10,
//                                       ),
//                                       letterSpacing: 1.50,
//                                       height: 1.60,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
