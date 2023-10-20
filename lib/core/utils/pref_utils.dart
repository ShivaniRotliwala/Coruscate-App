import 'dart:convert';
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  // Future<void> setUsername(String value) {
  //   return _sharedPreferences!.setString('username', value);
  // }
  Future<void> setUserid(String value) {
    log('In Pref Util UserId=>$value');
    return _sharedPreferences!.setString('usersessionid', value);
  }

  String getUserid() {
    try {
      return _sharedPreferences!.getString('usersessionid') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setUsername(String usernamevalue) {
    log('In Pref Util UserName Value=>$usernamevalue');
    return _sharedPreferences!.setString('usernamevalue', usernamevalue);
  }

  String getUsername() {
    try {
      return _sharedPreferences!.getString('usernamevalue') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setUseremail(String useremailvalue) {
    log('In Pref Util UserEmail Value=>$useremailvalue');
    return _sharedPreferences!.setString('useremailvalue', useremailvalue);
  }

  String getUseremail() {
    try {
      return _sharedPreferences!.getString('useremailvalue') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setTokenvalue(String tokenvalue) {
    log('In Pref Util Token Value=>$tokenvalue');
    return _sharedPreferences!.setString('tokenvalue', tokenvalue);
  }

  String getTokenvalue() {
    try {
      return _sharedPreferences!.getString('tokenvalue') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setMeetingIdvalue(String meetingidvalue) {
    log('In Pref Util MeetingId Value=>$meetingidvalue');
    return _sharedPreferences!.setString('meetingidvalue', meetingidvalue);
  }

  String getMeetingIdvalue() {
    try {
      return _sharedPreferences!.getString('meetingidvalue') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setMeetingIdForEditvalue(String editmeetingidvalue) {
    log('In Pref Util Edit MeetingId Value=>$editmeetingidvalue');
    return _sharedPreferences!
        .setString('editmeetingidvalue', editmeetingidvalue);
  }

  String getMeetingIdForEditvalue() {
    try {
      return _sharedPreferences!.getString('editmeetingidvalue') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setUserImagevalue(String userimagevalue) {
    log('In Pref Util User Image Value=>$userimagevalue');
    return _sharedPreferences!.setString('userimagevalue', userimagevalue);
  }

  String getUserImagevalue() {
    try {
      return _sharedPreferences!.getString('userimagevalue') ?? '';
    } catch (e) {
      return '';
    }
  }
}
