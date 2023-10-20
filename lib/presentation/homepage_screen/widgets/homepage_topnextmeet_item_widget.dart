import 'dart:async';
import 'dart:developer';
import 'package:coruscate/presentation/homepage_screen/models/homepage_item_model.dart';
import 'package:coruscate/presentation/homepage_screen/models/homepage_model.dart';

import '../controller/homepage_controller.dart';
import 'package:coruscate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

// class HomepageTopNextItemWidget extends StatefulWidget {
//   HomepageTopNextItemWidget(this.homepageItemModelObj, this.hr, this.min);

//   HomepageItemModel homepageItemModelObj;
//   late int hr = 0;
//   late int min = 0;

//   @override
//   State<HomepageTopNextItemWidget> createState() =>
//       _HomepageTopNextItemWidgetState();
// }

// class _HomepageTopNextItemWidgetState extends State<HomepageTopNextItemWidget> {
//   HomepageModel homePageModelObj = HomepageModel();

//   var controller = Get.find<HomepageController>();
//   int cnt = 0;
//   Timer? countdownTimer;

//   late Duration myDuration;
//   @override
//   void initState() {
//     super.initState();

//     // if (widget.hr == 0) {
//     //   myDuration = new Duration(minutes: widget.min);
//     // } else {
//     //   myDuration = new Duration(hours: widget.hr);
//     // }
//     myDuration = new Duration(hours: widget.hr, minutes: widget.min);
//     startTimer();
//   }

//   /// Timer related methods ///
//   // Step 3
//   startTimer() {
//     countdownTimer = Timer.periodic(Duration(seconds: 1), (_) async {
//       await setCountDown();
//     });
//   }

//   // Step 4
//   void stopTimer() {
//     setState(() => countdownTimer!.cancel());
//   }

//   // Step 5
//   void resetTimer() {
//     stopTimer();
//     setState(
//         () => myDuration = Duration(hours: widget.hr, minutes: widget.min));
//   }

//   // Step 6
//   setCountDown() {
//     final reduceSecondsBy = 1;
//     setState(() {
//       final seconds = myDuration.inSeconds - reduceSecondsBy;
//       seconds < 0
//           ? countdownTimer!.cancel()
//           : myDuration = Duration(seconds: seconds);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // String s = widget.homepageItemModelObj.MeetingFromTime.toString();
//     // TimeOfDay _startTime = TimeOfDay(
//     //     hour: int.parse(s.split(":")[0]), minute: int.parse(s.split(":")[1]));
//     // // log('StartTime=>${_startTime}');

//     // TimeOfDay nowTime = TimeOfDay.now();
//     // //log('Widget Now Time=>${nowTime}');

//     // double _doubleYourTime =
//     //     _startTime.hour.toDouble() + (_startTime.minute.toDouble() / 60);
//     // double _doubleNowTime =
//     //     nowTime.hour.toDouble() + (nowTime.minute.toDouble() / 60);

//     // double _timeDiff = _doubleYourTime - _doubleNowTime;

//     // int _hr = _timeDiff.truncate();
//     // double _minute = (_timeDiff - _timeDiff.truncate()) * 60;
//     // int min = _minute.toInt();

//     // //log('(Widget)Here your Happy ${_hr} Hour and also ${min} min');
//     // late String finalTimer = '${_hr}\u2095:${min}\u2098';

//     String strDigits(int n) => n.toString().padLeft(2, '0');
//     final days = strDigits(myDuration.inDays);
//     // Step 7
//     final hours = strDigits(myDuration.inHours.remainder(24));
//     final minutes = strDigits(myDuration.inMinutes.remainder(60));
//     final seconds = strDigits(myDuration.inSeconds.remainder(60));
//     callFunction() async {
//       await controller.callDisplayMeetinglist();
//       await controller.callDisplayParticipantslist();
//     }

//     if (hours == "00" && minutes == "00" && seconds == "00") {
//       callFunction();
//       // _HomepageTopNextItemWidgetState wd = _HomepageTopNextItemWidgetState();
//       // wd.initState();
//       //stopTimer();
//       //resetTimer();
//       // setState(() {
//       //   log(' Duration Time----> ${widget.hr}-${widget.min}');

//       //   myDuration = Duration(hours: widget.hr, minutes: widget.min);

//       //   startTimer();
//       // });
//     }
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(
//               left: getHorizontalSize(1.00), right: getHorizontalSize(10.00)),
//           child: Text("lbl_next_meeting_in".tr.toUpperCase(),
//               overflow: TextOverflow.ellipsis,
//               textAlign: TextAlign.left,
//               style: AppStyle.textStyleSofiaPromedium10.copyWith(
//                   fontSize: getFontSize(10),
//                   letterSpacing: 1.50,
//                   height: 1.60)),
//         ),
//         Padding(
//             padding: EdgeInsets.only(top: getVerticalSize(8.00)),
//             child: Text('$hours:$minutes:$seconds',
//                 //finalTimer,
//                 //"lbl_04_50_01".tr,
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.left,
//                 style: AppStyle.textStyleSofiaPro34
//                     .copyWith(fontSize: getFontSize(34), height: 1.06))),
//       ],
//     );
//   }
// }
class HomepageTopNextItemWidget extends StatelessWidget {
  HomepageTopNextItemWidget(this.homepageItemModelObj, this.hr, this.min,
      this.endTime, this.finalTime,
      {Key? key})
      : super(key: key);
  HomepageItemModel homepageItemModelObj;
  int hr;
  int min;
  int endTime;
  int finalTime;
  var controller = Get.put(HomepageController());
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: finalTime), () {
      //log("Yeah, this line is printed after 3 seconds");
      controller.callDisplayMeetinglist();
      controller.callDisplayParticipantslist();
    });
    // var hrseconds = hr * 3600;
    // var minseconds = min * 60;
    // var finalDuration = hrseconds + minseconds;
    // log('FinalDuration=>${finalDuration}');
    // int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * finalDuration;
    // log('EndTime=>${endTime}');
    // return Center(child: Container()
    //     //  Countdown(
    //     //   duration: Duration(seconds: 10),
    //     //   onFinish: () {
    //     //     print('finished!');
    //     //   },
    //     //   builder: (BuildContext ctx, Duration remaining) {
    //     //       return Text('${remaining.inMinutes}:${remaining.inSeconds}');
    //     //   },
    //     // ),
    //     );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: getHorizontalSize(1.00), right: getHorizontalSize(10.00)),
          child: Text("lbl_next_meeting_in".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.textStyleSofiaPromedium10.copyWith(
                  fontSize: getFontSize(10),
                  letterSpacing: 1.50,
                  height: 1.60)),
        ),
        CountdownTimer(
          endTime: endTime,
          textStyle: TextStyle(fontSize: 30, color: Colors.white),
          // widgetBuilder: (BuildContext context, CurrentRemainingTime? time) {
          //   return Text(
          //     'hours: [ ${time!.hours} ], min: [ ${time.min} ], sec: [ ${time.sec} ]',
          //     style: TextStyle(color: Colors.pink),
          //   );
          // },
        ),
      ],
    );
  }
}
