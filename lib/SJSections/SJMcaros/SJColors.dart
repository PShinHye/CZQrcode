
import 'dart:math';
import 'package:flutter/material.dart';

class SJColors {
  /// 定义常用RPG颜色
  static final Color cFFFFFF = hexColor(0xFFFFFF);
  static final Color c212120 = hexColor(0x212120);
  static final Color cCFCFCF = hexColor(0xCFCFCF);
  static final Color cF00000 = hexColor(0x000000, alpha: 0.12);
  /// 默认背景色
  static final Color cFAFAFA = hexColor(0xFAFAFA);
  /// 主题颜色
  static final Color c5EC0B3 = hexColor(0x5EC0B3);

  static final Color cF0F0F0 = hexColor(0xF0F0F0);
  static final Color c404040 = hexColor(0x404040);
  static final Color c073441 = hexColor(0x073441);
  static final Color cE6A23C = hexColor(0xE6A23C);
  static final Color c666666 = hexColor(0x666666);
  static final Color c999999 = hexColor(0x999999);
  static final Color c1F75E1 = hexColor(0x1F75E1);
  static final Color cB0B0B0 = hexColor(0xB0B0B0);
  static final Color cF6F6F6 = hexColor(0xF6F6F6);
  static final Color cD8D8D8 = hexColor(0xD8D8D8);
  static final Color cFB9D4C = hexColor(0xFB9D4C);

  static Color hexColor(int hex,{double alpha = 1}) {

    if (alpha < 0) {

      alpha = 0;

    }else if (alpha > 1) {

      alpha = 1;
    }
    return Color.fromRGBO((hex & 0xFF0000) >> 16 ,
        (hex & 0x00FF00) >> 8,
        (hex & 0x0000FF) >> 0,
        alpha);
  }

  /// 随机颜色
  static Color random(){

    return Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1);
  }
}
