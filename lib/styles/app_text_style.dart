import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppTextStyle {
  //h1
  static TextStyle medium24({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.white,
    );
  }

  //h2
  static TextStyle medium18({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.white,
    );
  }

  //h3
  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color ?? Colors.white,
    );
  }

  static TextStyle regular12({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color ?? Colors.white,
    );
  }
}
