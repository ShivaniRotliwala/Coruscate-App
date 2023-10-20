import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#6b6b6b');

  static Color black9004d = fromHex('#4d000000');

  static Color gray901 = fromHex('#262626');

  static Color gray902 = fromHex('#1c1c1c');

  static Color red900 = fromHex('#942600');

  static Color blueA700 = fromHex('#2661ff');

  static Color gray900 = fromHex('#1f1f1f');

  static Color indigoA201 = fromHex('#4d6bff');

  static Color lightGreen200 = fromHex('#dbc7ab');

  static Color indigoA200 = fromHex('#4275ff');

  static Color red400 = fromHex('#f56654');

  static Color blueA70033 = fromHex('#332661ff');

  static Color red90033 = fromHex('#33ba1f1f');

  static Color gray50 = fromHex('#fcfcfc');

  static Color bluegray900 = fromHex('#333333');

  static Color black900Dd = fromHex('#dd000000');

  static Color black90099 = fromHex('#99000000');

  static Color black900 = fromHex('#000000');

  static Color deepOrange700 = fromHex('#de5c2e');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90059 = fromHex('#59000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
