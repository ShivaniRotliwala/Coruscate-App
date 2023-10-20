import 'package:coruscate/presentation/profile_screen/models/profile_item_model.dart';
import 'package:get/get.dart';

class ProfileModel {
  RxList<ProfilepageItemModel> meetingByUserItemList = RxList.empty();
  RxList<ProfilepageItemModel> expertiesList = RxList.empty();
  RxString ProfileUsername = 'Test profile Username'.obs;
  RxString ProfileUserEmail = 'Test Profile UserEmail'.obs;
  //RxList<ProfilepageItemModel> meetingByUserItemList = RxList.filled(6,ProfilepageItemModel);
}
