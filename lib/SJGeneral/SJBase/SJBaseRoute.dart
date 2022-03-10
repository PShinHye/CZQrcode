

import 'package:cz_qrcode/SJSections/SJHome/VC/SJHomeQrcodeVC.dart';
import 'package:cz_qrcode/SJSections/SJHome/VC/SJHomeTagVC.dart';
import 'package:cz_qrcode/SJSections/SJHome/VC/SJHomeVC.dart';
import 'package:flutter/material.dart';

class SJBaseRoute {

  /// routing address configuration
  static const String rHome = "/SJHomeVC";
  static const String rHomeTag = "/SJHomeTagVC";
  static const String rHomeQrcode = "/SJHomeQrcodeVC";

  /// routing toutes configuration
  static final Map<String, WidgetBuilder> routes = {

    rHome: (bct) => const SJHomeVC(),
    rHomeTag: (bct) => const SJHomeTagVC(),
    rHomeQrcode: (bct) => const SJHomeQrcodeVC(),
  };
}

// if (index == 0 || index == 4 || index == 5) {
//   /// 静态路由传值，值较为灵活
//   Navigator.of(context).pushNamed(SJBaseRoute.rAboutUs, arguments: {"type" : index});
// }else{
//   /// 动态路由传值，值较为固定
//   Navigator.of(context).push(
//     MaterialPageRoute (
//       builder: (context) => SJBaseWeb ( id: cellId[index] ),
//     ),
//   );
// }