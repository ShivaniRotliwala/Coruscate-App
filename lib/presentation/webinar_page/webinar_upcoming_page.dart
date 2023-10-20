import '../webinar_page/widgets/webinar_item_widget.dart';
import 'controller/webinar_controller.dart';
import 'models/webinar_item_model.dart';
import 'models/webinar_model.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';

class WebinarUpcomingPage extends StatelessWidget {
  WebinarController controller = Get.put(WebinarController(WebinarModel().obs));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          17.00,
        ),
        right: getHorizontalSize(
          17.00,
        ),
      ),
      child: Obx(
        () => ListView.builder(
          // physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount:
              controller.webinarModelObj.value.webinarUpcomingItemList.length,
          itemBuilder: (context, index) {
            //DateTime dateCheck=DateTime.parse(controller.webinarModelObj.value.webinarItemList)
            WebinarItemModel model =
                controller.webinarModelObj.value.webinarUpcomingItemList[index];
            return WebinarItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
