import 'package:get/get.dart';
import 'homepage_item_model.dart';

class HomepageModel {
  RxList<HomepageItemModel> homepageItemList = RxList.empty();
  RxList<HomepageItemModel> homepageUpcomingItemList = RxList.empty();
  RxList<HomepageItemModel> homepageNextMeetingItemList = RxList.empty();
  RxList<HomepageItemModel> homepageTopNextMeetingItemList = RxList.empty();
  RxList<HomepageItemModel> homepageParticipantsItemList = RxList.empty();
  RxInt hourTimer = 0.obs;
  RxInt minuteTimer = 0.obs;
  RxInt secondTimer = 0.obs;
}
