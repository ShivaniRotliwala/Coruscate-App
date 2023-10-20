import 'package:coruscate/presentation/webinar3_screen/controller/webinar3_controller.dart';
import 'package:coruscate/presentation/webinar_page/webinar_completed_page.dart';
import 'package:coruscate/presentation/webinar_page/webinar_upcoming_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../webinar3_screen/widget/webinar3_item_widget.dart';
import '../../core/app_export.dart';
import '../../core/utils/math_utils.dart';
import '../bottom_nav_bar/bottom_nav_bar_screen.dart';
import '../bottom_nav_bar/controller/bottom_nav_bar_controller.dart';

import '../webinar_page/webinar_page.dart';
import 'models/webinar3_item_model.dart';

class Webinar3Screen extends GetWidget<Webinar3Controller> {
  //const Webinar3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Webinar"),
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
          body: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    16.00,
                  ),
                  top: getVerticalSize(
                    12.00,
                  ),
                  right: getHorizontalSize(
                    16.00,
                  ),
                ),
                child: TabBar(
                  controller: Get.find<Webinar3Controller>().group19Controller,
                  tabs: [
                    Tab(
                      text: "lbl_all".tr,
                    ),
                    Tab(
                      text: "lbl_upcoming".tr,
                    ),
                    Tab(
                      text: "lbl_completed".tr,
                    ),
                  ],
                  labelColor: ColorConstant.gray50,
                  unselectedLabelColor: ColorConstant.gray600,
                  indicatorColor: ColorConstant.gray50,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      20.00,
                    ),
                  ),
                  height: getVerticalSize(
                    590.00,
                  ),
                  child: TabBarView(
                    controller:
                        Get.find<Webinar3Controller>().group19Controller,
                    children: [
                      WebinarPage(),
                      WebinarUpcomingPage(),
                      WebinarCompletedPage(),
                      //WebinarPage(),
                      //WebinarPage(),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     left: getHorizontalSize(
                      //       17.00,
                      //     ),
                      //     right: getHorizontalSize(
                      //       17.00,
                      //     ),
                      //   ),
                      //   child: Obx(
                      //     () => ListView.builder(
                      //       // physics: BouncingScrollPhysics(),
                      //       shrinkWrap: true,
                      //       itemCount: controller
                      //           .webinar3ModelObj.value.webinar3ItemList.length,
                      //       itemBuilder: (context, index) {
                      //         Webinar3ItemModel model = controller
                      //             .webinar3ModelObj
                      //             .value
                      //             .webinar3ItemList[index];
                      //         return Webinar3ItemWidget(
                      //           model,
                      //         );
                      //       },
                      //     ),
                      //   ),
                      // ),
                      // Container(),
                      // Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
          bottomNavigationBar: BottomNav()),
    );
  }
}
