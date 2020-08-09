import 'package:flutter/material.dart';

class Warna {
  static Color pinkPrimary = Color(0xffff9b99);
  static Color bgPinkColor = Color(0xfffcb7ba);
  static Color bgLightPink = Color(0xfffff4f4);
  static Color bgDarkPink = Color(0xffa25c66);
  static Color darkRed = Color.fromARGB(255, 161, 92, 101);
  static Color bgLightPink2 = Color.fromARGB(255, 255, 240, 241);
  static Color bgLightPink3 = Color.fromARGB(255, 253, 216, 209);
  static Color white = Color(0xffffffff);
  static Color bgfb = Color.fromARGB(255, 59, 89, 152);
  static Color a15c65 = Color(0xFFA15C65);
  static Color fff0f1 = Color(0xFFFFF0F1);
  static Color dcb8bc = Color(0xFFDCB8BC);

  static LinearGradient mainGrad = LinearGradient(
    colors: [bgLightPink, bgPinkColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
