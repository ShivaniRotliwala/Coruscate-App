import 'package:get/get.dart';
import 'webinar_item_model.dart';

class WebinarModel {
  RxList<WebinarItemModel> webinarItemList = RxList.empty();
  RxList<WebinarItemModel> webinarUpcomingItemList = RxList.empty();
  RxList<WebinarItemModel> webinarCompletedItemList = RxList.empty();
  //RxList.filled(3, WebinarItemModel());
}
