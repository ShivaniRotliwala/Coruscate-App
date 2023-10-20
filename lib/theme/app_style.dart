import 'package:flutter/material.dart';
import 'package:coruscate/core/app_export.dart';

class AppStyle {
  static TextStyle textStyleregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyleSofiaPro16 = textStyleSofiaPro123.copyWith(
    fontSize: getFontSize(
      16,
    ),
  );

  static TextStyle textStyleSofiaPromedium10 = TextStyle(
  fontSize: 13,
  letterSpacing: 1.50,
  color: ColorConstant.whiteA700,
  );

  static TextStyle textStyleSofiaPro34 = textStyleSofiaPro123.copyWith(
    fontSize: getFontSize(
      34,
    ),
  );

  static TextStyle textStyleSofiaPro12 = textStyleSofiaPro123.copyWith(
    color: ColorConstant.red900,
  );

  static TextStyle textStyleSofiaPro14 = textStyleSofiaPro142.copyWith();

  static TextStyle textStyleSofiaPromedium14 = textStyleSofiaPro142.copyWith(
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyleSofiaProsemibold34 =
      textStyleSofiaProsemibold14.copyWith(
    fontSize: getFontSize(
      34,
    ),
  );

  static TextStyle textStyleSofiaProsemibold14 = textStyleSofiaPro142.copyWith(
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyleSofiaPromedium48 =
      textStyleSofiaPromedium201.copyWith(
    fontSize: getFontSize(
      48,
    ),
  );

  static TextStyle textStyleSofiaProsemibold201 =
      textStyleSofiaProsemibold20.copyWith(
    color: ColorConstant.gray600,
  );

  static TextStyle textStyleSofiaPromedium20 =
      textStyleSofiaPromedium201.copyWith(
    color: ColorConstant.black900,
  );

  static TextStyle textStyleregular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyleSofiaPro24 = textStyleSofiaPro123.copyWith(
    fontSize: getFontSize(
      24,
    ),
  );

  static TextStyle textStyleSofiaPromedium24 =
      TextStyle(
    color: Colors.grey,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyleSofiaProsemibold20 = TextStyle(
    color: ColorConstant.gray50,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyleSofiaPro128 = textStyleSofiaPro123.copyWith(
    color: ColorConstant.indigoA201,
  );

  static TextStyle textStyleSofiaPro127 = textStyleSofiaPro123.copyWith();

  static TextStyle textStyleSofiaPromedium201 =
      textStyleSofiaProlight20.copyWith(
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyleSofiaPro122 = textStyleSofiaPro123.copyWith(
    color: ColorConstant.deepOrange700,
  );

  static TextStyle textStyleSofiaPro121 = textStyleSofiaPro123.copyWith(
    color: ColorConstant.black900,
  );

  static TextStyle textStyleSofiaProlight20 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w300,
  );

  static TextStyle textStyleSofiaPro126 = textStyleSofiaPro123.copyWith(
    color: ColorConstant.red400,
  );

  static TextStyle textStyleSofiaPro143 = TextStyle(
    fontSize: 20,
    color: ColorConstant.whiteA700
  );

  static TextStyle textStyleSofiaPro125 = textStyleSofiaPro123.copyWith();

  static TextStyle textStyleSofiaPro142 = textStyleSofiaPro123.copyWith(
    fontSize: getFontSize(
      14,
    ),
  );

  static TextStyle textStyleSofiaPro124 = textStyleSofiaPro123.copyWith(
    color: ColorConstant.blueA700,
  );

  static TextStyle textStyleSofiaPro141 = textStyleSofiaPro142.copyWith(
    color: ColorConstant.black900Dd,
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyleSofiaPro123 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Sofia Pro',
    fontWeight: FontWeight.w400,
  );
}
