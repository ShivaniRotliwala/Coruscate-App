// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names, use_key_in_widget_constructors

import 'package:coruscate/presentation/webinar3_screen/webinar3_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../homepage_screen/homepage_screen.dart';
import 'controller/bottom_nav_bar_controller.dart';

class BottomNav extends GetWidget<BottomNavBarController> {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      showSelectedLabels: true,
      onTap: (index) {
        controller.changeTabIndex(index);
      },
      currentIndex: controller.tabIndex.value,
      backgroundColor: Colors.black38,
      unselectedItemColor: Colors.white.withOpacity(0.5),
      selectedItemColor: Colors.white,
      // unselectedLabelStyle: unselectedLabelStyle,
      // selectedLabelStyle: selectedLabelStyle,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Icon(
                Icons.home,
                size: 20.0,
              ),
            ),
            label: 'Home'.toUpperCase(),
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Icon(
                Icons.airplay,
                size: 20.0,
              ),
            ),
            label: 'Webinar'.toUpperCase(),
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Icon(
                Icons.menu_book_sharp,
                size: 20.0,
              ),
            ),
            label: 'Learn'.toUpperCase(),
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Icon(
                Icons.link_sharp,
                size: 20.0,
              ),
            ),
            label: 'Tie-ups'.toUpperCase(),
            backgroundColor: Colors.black),
      ],
    );
  }
}



// import 'package:coruscate/core/app_export.dart';
// import 'package:coruscate/presentation/bottom_nav_bar/controller/bottom_nav_bar_controller.dart';
// import 'package:coruscate/presentation/webinar1_screen/webinar1_screen.dart';
// import 'package:coruscate/presentation/webinar2_screen/webinar2_screen.dart';
// import 'package:coruscate/presentation/webinar3_screen/webinar3_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// class BottomNavScreen extends GetWidget<BottomNavBarController> {
//   var selectedIndex;
//   List<PersistentBottomNavBarItem> items = [];
//   ValueChanged<int> onItemSelected = 0.obs;

//   BottomNavScreen({
//     Key? key,
//     required this.selectedIndex,
//     required this.items,
//     required this.onItemSelected,
//   });

//   List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: SvgPicture.asset(ImageConstant.imgHome, fit: BoxFit.fill),
//         title: "Home".toUpperCase(),
//         activeColorPrimary: Colors.white,
//         // inactiveColorPrimary: Colors.grey,
//         // inactiveColorSecondary: Colors.purple,
//       ),
//       PersistentBottomNavBarItem(
//         icon: SvgPicture.asset(ImageConstant.imgAirplay, fit: BoxFit.fill),
//         title: "Webinar".toUpperCase(),
//         activeColorPrimary: Colors.teal,
//         inactiveColorPrimary: Colors.grey,
//         routeAndNavigatorSettings: RouteAndNavigatorSettings(
//           initialRoute: '/',
//           routes: {
//             '/first': (context) => Webinar3Screen(),
//             // '/second': (context) => MainScreen3(),
//           },
//         ),
//       ),
//       PersistentBottomNavBarItem(
//         icon: SvgPicture.asset(ImageConstant.imgBookopen, fit: BoxFit.fill),
//         title: "Learn".toUpperCase(),
//         activeColorPrimary: Colors.blueAccent,
//         activeColorSecondary: Colors.black,
//         inactiveColorPrimary: Colors.amber,
//         routeAndNavigatorSettings: RouteAndNavigatorSettings(
//           initialRoute: '/',
//           routes: {
//             '/first': (context) => Webinar1Screen(),
//             // '/second': (context) => MainScreen3(),
//           },
//         ),
//         // onPressed: (context) {
//         //   pushDynamicScreen(context,
//         //       screen: SampleModalScreen(), withNavBar: true);
//         // }
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.message),
//         title: "Tie Ups".toUpperCase(),
//         activeColorPrimary: Colors.deepOrange,
//         inactiveColorPrimary: Colors.grey,
//         routeAndNavigatorSettings: RouteAndNavigatorSettings(
//           initialRoute: '/',
//           routes: {
//             '/first': (context) => Webinar2Screen(),
//             // '/second': (context) => MainScreen3(),
//           },
//         ),
//       ),
//     ];
//   }

//   Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
//     return Container(
//       alignment: Alignment.center,
//       height: kBottomNavigationBarHeight,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Flexible(
//             child: IconTheme(
//               data: IconThemeData(
//                   size: 26.0,
//                   color: isSelected
//                       ? (item.activeColorSecondary == null
//                           ? item.activeColorPrimary
//                           : item.activeColorSecondary)
//                       : item.inactiveColorPrimary == null
//                           ? item.activeColorPrimary
//                           : item.inactiveColorPrimary),
//               child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: Material(
//               type: MaterialType.transparency,
//               child: FittedBox(
//                   child: Text(
//                 item.title.toString(),
//                 style: TextStyle(
//                     color: isSelected
//                         ? (item.activeColorSecondary == null
//                             ? item.activeColorPrimary
//                             : item.activeColorSecondary)
//                         : item.inactiveColorPrimary,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 12.0),
//               )),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey,
//       child: Container(
//         width: double.infinity,
//         height: kBottomNavigationBarHeight,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: items.map((item) {
//             int index = items.indexOf(item);
//             return Flexible(
//               child: GestureDetector(
//                 onTap: () {
//                   this.onItemSelected(index);
//                 },
//                 child: _buildItem(item, selectedIndex == index),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
