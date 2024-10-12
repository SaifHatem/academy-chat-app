import 'package:academy_chat_app/core/themes/color_app.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textStyle24 = const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle10 = const TextStyle(
    color: ColorApp.primaryColor,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
}
