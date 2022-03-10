
import 'package:cz_qrcode/SJSections/SJMcaros/SJColors.dart';
import 'package:cz_qrcode/SJSections/SJMcaros/SJImg.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SJHomeQrcodeView extends StatefulWidget {
  const SJHomeQrcodeView({Key? key, this.type, this.index}) : super(key: key);

  final int? type;
  final int? index;

  @override
  _SJHomeQrcodeViewState createState() => _SJHomeQrcodeViewState();
}

class _SJHomeQrcodeViewState extends State<SJHomeQrcodeView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  var imgArr = [[SJImg.qrcodeOne, SJImg.qrcodeTwo, SJImg.qrcodeThree, SJImg.qrcodeFour], [SJImg.qrcodeFive,
    SJImg.qrcodeSix, SJImg.qrcodeSeven, SJImg.qrcodeEight], [SJImg.qrcodeNine, SJImg.qrcodeTen,
    SJImg.qrcodeEleven, SJImg.qrcodeTwelve, SJImg.qrcodeThirteen, SJImg.qrcodeFourteen], [SJImg.qrcodeFifteen,
    SJImg.qrcodeSixteen, SJImg.qrcodeSeventeen, SJImg.qrcodeEighteen], [SJImg.qrcodeNineteen, SJImg.qrcodeTwenty],
    [SJImg.qrcodeTOne, SJImg.qrcodeTTwo, SJImg.qrcodeTThree]];

  var urlArr = [['https://www.pgyer.com/02AY','https://www.pgyer.com/hnsLuBao','https://www.pgyer.com/jA6t',
    'https://www.pgyer.com/lbcs'], ['https://www.pgyer.com/KBsx','https://www.pgyer.com/Qmy3',
    'https://www.pgyer.com/irAa','https://www.pgyer.com/dVpD'], ['https://www.pgyer.com/JeRC',
  'https://www.pgyer.com/hnsFzDriver','https://www.pgyer.com/iiIp','https://www.pgyer.com/fzcs',
    'https://www.pgyer.com/lc9H','https://www.pgyer.com/3GhD'], ['https://www.pgyer.com/CPKq',
    'https://www.pgyer.com/Zrco','https://www.pgyer.com/JQmK','https://www.pgyer.com/RbtL'], ['https://www.pgyer.com/xwgB',
    '未有安全培训_Android,请联系开发人员'], ['https://www.pgyer.com/xmhnszg', 'https://www.pgyer.com/xmhnsdriver',
    'https://www.pgyer.com/xmhnsSj']];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox( height: 50),
          urlArr[widget.type ?? 0][widget.index ?? 0] == "未有安全培训_Android,请联系开发人员" ?
          const SizedBox() : Container (
            width: 300.sp,
            height: 300.sp,
            decoration: BoxDecoration (
              image: DecorationImage(
                image: AssetImage(imgArr[widget.type ?? 0][widget.index ?? 0]),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox( height: 25),
          Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "链接地址: ",
                    style: TextStyle(
                      color: SJColors.hexColor(0x212120),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: urlArr[widget.type ?? 0][widget.index ?? 0],
                    style: TextStyle(
                      color: SJColors.c5EC0B3,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () => clickUrl(widget.index ?? 0),
                  ),
              ],
          )),
        ],
      ),
    );
  }

  void clickUrl(int index) {

    if (urlArr[widget.type ?? 0][index] == "未有安全培训_Android,请联系开发人员") {

      return;
    }
    launch(urlArr[widget.type ?? 0][index]);
  }
}
