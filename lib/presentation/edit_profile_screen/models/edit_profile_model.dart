import 'package:coruscate/core/app_export.dart';
import 'package:coruscate/presentation/edit_profile_screen/models/edit_profile_item_model.dart';

class EditProfileModel {
  RxList<EditProfileItemModel> expertiesList = RxList.empty();
  RxString EditProfileUsername = 'Test Editprofile Username'.obs;
  RxString EditProfileUserEmail = 'Test EditProfile UserEmail'.obs;
  RxString EditProfileUserCompany = 'Test User Company'.obs;
  RxString EditProfileUserDesignation = 'Test User Designation'.obs;
  RxString EditProfileExperties = 'Test User Experties'.obs;
  RxString EditUserMobileNo = 'Test User ContactNo'.obs;
  RxString EditUserImage = 'Test User ProfileImage'.obs;
}
