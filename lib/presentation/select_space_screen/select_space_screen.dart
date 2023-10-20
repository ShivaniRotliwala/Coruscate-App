import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:coruscate/data/models/meetingListModel/post_meetinglist_req.dart';

import '../select_space_screen/widgets/select_space_item_widget.dart';
import 'controller/select_space_controller.dart';
import 'models/select_space_item_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectSpaceScreen extends GetWidget<SelectSpaceController> {
  //SelectSpaceScreen(PostMeetingListReq postMeetingListReq);
  //PostMeetingListReq postMeetingListReq;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: ColorConstant.black900,
                elevation: 0,
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  indicatorWeight: 4,
                  unselectedLabelColor: ColorConstant.whiteA700,
                  // indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: ColorConstant.blueA700),
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text("lbl_open_space".tr),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text("lbl_close_space".tr),
                      ),
                    ),
                  ],
                ),
                title: Text("lbl_select_space".tr),
              ),
              backgroundColor: ColorConstant.black900,
              body: TabBarView(children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getHorizontalSize(17.00),
                      top: getVerticalSize(20.00),
                      right: getHorizontalSize(17.00)),
                  child: Obx(
                    () => ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.selectSpaceModelObj.value
                            .selectSpaceItemList.length,
                        itemBuilder: (context, index) {
                          // print(controller.selectSpaceModelObj.value
                          //     .selectSpaceItemList[index]);
                          if (controller.selectSpaceModelObj.value
                                  .selectSpaceItemList[index].spaceTypeData ==
                              "Open") {
                            SelectSpaceItemModel model = controller
                                .selectSpaceModelObj
                                .value
                                .selectSpaceItemList[index];
                            return SelectSpaceItemWidget(model);
                          } else {
                            return SizedBox();
                          }
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getHorizontalSize(17.00),
                      top: getVerticalSize(20.00),
                      right: getHorizontalSize(17.00)),
                  child: Obx(
                    () => ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.selectSpaceModelObj.value
                            .selectSpaceItemList.length,
                        itemBuilder: (context, index) {
                          // print(controller.selectSpaceModelObj.value
                          //     .selectSpaceItemList[index]);
                          if (controller.selectSpaceModelObj.value
                                  .selectSpaceItemList[index].spaceTypeData ==
                              "Closed") {
                            SelectSpaceItemModel model = controller
                                .selectSpaceModelObj
                                .value
                                .selectSpaceItemList[index];
                            return SelectSpaceItemWidget(model);
                          } else {
                            return SizedBox();
                          }
                        }),
                  ),
                ),
              ]))),
    );
  }

  onTapGroup74() {
    Get.toNamed(AppRoutes.bookSpaceScreen);
  }
}
