import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../webinar_page/widgets/webinar_item_widget.dart';
import 'controller/webinar_controller.dart';
import 'models/webinar_item_model.dart';
import 'models/webinar_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';

class WebinarPage extends StatelessWidget {
  WebinarController controller = Get.put(WebinarController(WebinarModel().obs));

  @override
  Widget build(BuildContext context) {
    RefreshController refreshController = controller.refreshController;
    return Padding(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          17.00,
        ),
        right: getHorizontalSize(
          17.00,
        ),
      ),
      child:
          // Obx(
          //   () => controller.getAllEvent.value
          //       ? Obx(
          //           () => SmartRefresher(
          //             // ignore: prefer_const_constructors
          //             header: MaterialClassicHeader(
          //                 // backgroundColor: ColorConstant.primary_color,
          //                 // color: ColorConstant.white_A700,
          //                 ),
          //             enablePullDown: true,
          //             enablePullUp: controller.totalItem.value > 0,
          //             //  &&
          //             //     controller.count.value < controller.totalItem.value,
          //             controller: refreshController,
          //             onRefresh: () => controller.callDisplayWebinarlist(true),
          //             onLoading: () =>
          //                 controller.callDisplayWebinarlist(false, isLoading: true),
          //             child: Obx(
          //               // controller.totalItem.value
          //               () => controller
          //                           .webinarModelObj.value.webinarItemList.length >
          //                       0
          //                   ? ListView.builder(
          //                       // physics: BouncingScrollPhysics(),
          //                       shrinkWrap: true,
          //                       itemCount: controller
          //                           .webinarModelObj.value.webinarItemList.length,
          //                       itemBuilder: (context, index) {
          //                         //DateTime dateCheck=DateTime.parse(controller.webinarModelObj.value.webinarItemList)
          //                         WebinarItemModel model = controller
          //                             .webinarModelObj.value.webinarItemList[index];
          //                         return WebinarItemWidget(
          //                           model,
          //                         );
          //                       },
          //                     )
          //                   : Center(
          //                       child: SizedBox(
          //                           // noDataMsg: "No Events Found",
          //                           ),
          //                     ),
          //             ),
          //           ),
          //         )
          //       : Padding(
          //           padding: EdgeInsets.only(top: getVerticalSize(10)),
          //           child: Obx(() =>
          //               controller.webinarModelObj.value.webinarItemList.length > 0
          //                   ? ListView.builder(
          //                       // physics: BouncingScrollPhysics(),
          //                       shrinkWrap: true,
          //                       itemCount: controller
          //                           .webinarModelObj.value.webinarItemList.length,
          //                       itemBuilder: (context, index) {
          //                         //DateTime dateCheck=DateTime.parse(controller.webinarModelObj.value.webinarItemList)
          //                         WebinarItemModel model = controller
          //                             .webinarModelObj.value.webinarItemList[index];
          //                         return WebinarItemWidget(
          //                           model,
          //                         );
          //                       },
          //                     )
          //                   : Center(
          //                       child: Text(
          //                         "No Events Found",
          //                         textAlign: TextAlign.center,
          //                       ),
          //                     )),
          //         ),
          // ),
          Obx(
        () => ListView.builder(
          // physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.webinarModelObj.value.webinarItemList.length,
          itemBuilder: (context, index) {
            //DateTime dateCheck=DateTime.parse(controller.webinarModelObj.value.webinarItemList)
            WebinarItemModel model =
                controller.webinarModelObj.value.webinarItemList[index];
            return WebinarItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
