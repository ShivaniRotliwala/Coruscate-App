import 'package:coruscate/core/app_export.dart';
import 'package:coruscate/presentation/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:coruscate/presentation/webinar2_screen/controller/webinar2_controller.dart';
import 'package:coruscate/presentation/webinar2_screen/widgets/webinar2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/math_utils.dart';

import 'models/webinar2_item_model.dart';

class Webinar2Screen extends StatelessWidget {
  const Webinar2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Tie Ups"),
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
              itemCount: Get.find<Webinar2Controller>()
                  .webinar2ModelObj
                  .value
                  .webinar2ItemList
                  .length,
              itemBuilder: (context, index) {
                Webinar2ItemModel model = Get.find<Webinar2Controller>()
                    .webinar2ModelObj
                    .value
                    .webinar2ItemList[index];
                return Webinar2ItemWidget(
                  model,
                );
              },
            ),
          ),
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
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
