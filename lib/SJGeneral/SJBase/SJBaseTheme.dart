
import 'package:cz_qrcode/SJSections/SJMcaros/SJColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SJBaseTheme {
  /// 浅色模式，默认
  static final ThemeData lightTheme = ThemeData (

      primaryColor: SJColors.cFFFFFF,
      textTheme: TextTheme(

          bodyText1: TextStyle(fontSize: 14.sp, color: SJColors.c212120),
          bodyText2: TextStyle(fontSize: 14.sp,
              fontWeight: FontWeight.bold, color: SJColors.c212120)
      )
  );
  /// 暗黑模式
  static final ThemeData darkTheme = ThemeData(

      primaryColor: SJColors.cFFFFFF,
      textTheme: TextTheme(

          bodyText1: TextStyle(fontSize: 14.sp, color: SJColors.c212120),
          bodyText2: TextStyle(fontSize: 14.sp,
              fontWeight: FontWeight.bold, color: SJColors.c212120)
      )
  );
}