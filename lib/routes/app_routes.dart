import 'package:coruscate/presentation/bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import 'package:coruscate/presentation/bottom_nav_bar/bottom_nav_bar_screen.dart';

import 'package:coruscate/presentation/login_screen/login_screen.dart';
import 'package:coruscate/presentation/login_screen/binding/login_binding.dart';
import 'package:coruscate/presentation/login_with_email_screen/login_with_email_screen.dart';
import 'package:coruscate/presentation/login_with_email_screen/binding/login_with_email_binding.dart';
import 'package:coruscate/presentation/sign_up_with_email_screen/sign_up_with_email_screen.dart';
import 'package:coruscate/presentation/sign_up_with_email_screen/binding/sign_up_with_email_binding.dart';
import 'package:coruscate/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:coruscate/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:coruscate/presentation/homepage_screen/homepage_screen.dart';
import 'package:coruscate/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:coruscate/presentation/book_space_screen/book_space_screen.dart';
import 'package:coruscate/presentation/book_space_screen/binding/book_space_binding.dart';
import 'package:coruscate/presentation/book_space1_screen/book_space1_screen.dart';
import 'package:coruscate/presentation/book_space1_screen/binding/book_space1_binding.dart';
import 'package:coruscate/presentation/book_space2_screen/book_space2_screen.dart';
import 'package:coruscate/presentation/book_space2_screen/binding/book_space2_binding.dart';
import 'package:coruscate/presentation/profile_screen/profile_screen.dart';
import 'package:coruscate/presentation/profile_screen/binding/profile_binding.dart';
import 'package:coruscate/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:coruscate/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:coruscate/presentation/select_space_screen/select_space_screen.dart';
import 'package:coruscate/presentation/select_space_screen/binding/select_space_binding.dart';
import 'package:coruscate/presentation/success_bulletin_screen%20copy/binding/success_cancel_binding.dart';
import 'package:coruscate/presentation/success_message_screen/success_message_screen.dart';
import 'package:coruscate/presentation/success_message_screen/binding/success_message_binding.dart';
import 'package:coruscate/presentation/success_bulletin_screen/success_bulletin_screen.dart';
import 'package:coruscate/presentation/success_bulletin_screen/binding/success_bulletin_binding.dart';
import 'package:coruscate/presentation/success_bulletin1_screen/success_bulletin1_screen.dart';
import 'package:coruscate/presentation/success_bulletin1_screen/binding/success_bulletin1_binding.dart';
import 'package:coruscate/presentation/webinar1_screen/webinar1_screen.dart';
import 'package:coruscate/presentation/webinar1_screen/binding/webinar1_binding.dart';

import 'package:coruscate/presentation/webinar2_screen/webinar2_screen.dart';
import 'package:coruscate/presentation/webinar2_screen/binding/webinar2_binding.dart';
import 'package:coruscate/presentation/create_new_screen/create_new_screen.dart';
import 'package:coruscate/presentation/create_new_screen/binding/create_new_binding.dart';
import 'package:coruscate/presentation/webinar3_screen/webinar3_screen.dart';
import 'package:coruscate/presentation/webinar3_screen/binding/webinar3_binding.dart';
import 'package:coruscate/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:coruscate/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/success_bulletin_screen copy/success_cancel_screen.dart';

class AppRoutes {
  static String loginScreen = '/login_screen';

  static String loginWithEmailScreen = '/login_with_email_screen';

  static String signUpWithEmailScreen = '/sign_up_with_email_screen';

  static String signUpScreen = '/sign_up_screen';

  static String homepageScreen = '/homepage_screen';

  static String bookSpaceScreen = '/book_space_screen';

  static String bookSpace1Screen = '/book_space1_screen';

  static String bookSpace2Screen = '/book_space2_screen';

  static String profileScreen = '/profile_screen';

  static String editProfileScreen = '/edit_profile_screen';

  static String selectSpaceScreen = '/select_space_screen';

  static String successMessageScreen = '/success_message_screen';

  static String successBulletinScreen = '/success_bulletin_screen';

  static String successBulletin1Screen = '/success_bulletin1_screen';

  static String webinar1Screen = '/webinar1_screen';

  static String webinar2Screen = '/webinar2_screen';

  static String createNewScreen = '/create_new_screen';

  static String webinar3Screen = '/webinar3_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static String successCancelScreen = '/successCancelScreen';

  static String bottomNavScreen = '/bottom_nav_screen';

  static String floatingActionScreen = '/floating_action_screen';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: loginWithEmailScreen,
      page: () => LoginWithEmailScreen(),
      bindings: [
        LoginWithEmailBinding(),
      ],
    ),
    GetPage(
      name: signUpWithEmailScreen,
      page: () => SignUpWithEmailScreen(),
      bindings: [
        SignUpWithEmailBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
        BottomNavBarBinding(),
      ],
    ),
    GetPage(
      name: bookSpaceScreen,
      page: () => BookSpaceScreen(),
      bindings: [
        BookSpaceBinding(),
      ],
    ),
    GetPage(
      name: bookSpace1Screen,
      page: () => BookSpace1Screen(),
      bindings: [
        BookSpace1Binding(),
      ],
    ),
    GetPage(
      name: bookSpace2Screen,
      page: () => BookSpace2Screen(),
      bindings: [
        BookSpace2Binding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: selectSpaceScreen,
      page: () => SelectSpaceScreen(),
      bindings: [
        SelectSpaceBinding(),
      ],
    ),
    GetPage(
      name: successMessageScreen,
      page: () => SuccessMessageScreen(),
      bindings: [
        SuccessMessageBinding(),
      ],
    ),
    GetPage(
      name: successBulletinScreen,
      page: () => SuccessBulletinScreen(),
      bindings: [
        SuccessBulletinBinding(),
      ],
    ),
    GetPage(
      name: successBulletin1Screen,
      page: () => SuccessBulletin1Screen(),
      bindings: [
        SuccessBulletin1Binding(),
      ],
    ),
    GetPage(
      name: webinar1Screen,
      page: () => Webinar1Screen(),
      bindings: [
        Webinar1Binding(),
      ],
    ),
    GetPage(
      name: webinar2Screen,
      page: () => Webinar2Screen(),
      bindings: [
        Webinar2Binding(),
      ],
    ),
    GetPage(
      name: createNewScreen,
      page: () => CreateNewScreen(),
      bindings: [
        CreateNewBinding(),
      ],
    ),
    GetPage(
      name: webinar3Screen,
      page: () => Webinar3Screen(),
      bindings: [
        Webinar3Binding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: successCancelScreen,
      page: () => SuccessCancelScreen(),
      bindings: [
        SuccessCancelBinding(),
      ],
    ),
    GetPage(
      name: bottomNavScreen,
      page: () => BottomNav(),
      bindings: [
        BottomNavBarBinding(),
      ],
    ),
  ];
}
