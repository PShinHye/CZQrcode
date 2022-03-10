
import 'package:cz_qrcode/SJGeneral/SJBase/SJBaseRoute.dart';
import 'package:cz_qrcode/SJSections/SJMcaros/SJColors.dart';
import 'package:cz_qrcode/SJSections/SJMcaros/SJImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SJHomeTagView extends StatefulWidget {
  const SJHomeTagView({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  _SJHomeTagViewState createState() => _SJHomeTagViewState();
}

class _SJHomeTagViewState extends State<SJHomeTagView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  var cellNameArr = [['路宝_iOS_正式','路宝_Android_正式','路宝_iOS_测试','路宝_Android_测试'],
    ['路宝+_iOS_正式','路宝+_Android_正式','路宝+_iOS_测试','路宝+_Android_测试'], ['车运通_iOS_正式',
      '车运通_Android_正式','车运通_iOS_测试','车运通_Android_测试','宁德车运通_iOS','宁德车运通_Android'],
    ['车席安_iOS_正式','车席安_Android_正式','车席安_iOS_测试','车席安_Android_测试'], ['安全培训_iOS',
      '安全培训_Android'], ['掌柜_货主端','掌柜_调度端','掌柜_司机端']];

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

    return ListView.builder (
      /// 禁止滑动
      /// physics: const NeverScrollableScrollPhysics(),
      /// 自适应子控件高度
      shrinkWrap: true,
      itemCount: cellNameArr[widget.index ?? 0].length,
      itemBuilder: (bct, index) {

        return GestureDetector (
          onTap: () => clickCellPush(index),
          child: buildCellView(bct, index),
        );
      },
    );
  }

  Widget buildCellView(BuildContext bct, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox (height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            width: 600.sp,//ScreenUtil().screenWidth / 3,
            height: 85.sp,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: SJColors.c5EC0B3),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                const SizedBox (width: 10),
                Expanded(
                  child: Text(
                    cellNameArr[widget.index ?? 0][index],
                    style: TextStyle(
                      color: SJColors.hexColor(404040),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 14.sp,
                    height: 28.sp,
                    decoration: const BoxDecoration (
                      image: DecorationImage(
                        image: AssetImage(SJImg.arrow),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void clickCellPush(int index) {

    Navigator.of(context).pushNamed(SJBaseRoute.rHomeQrcode, arguments: {"type" : widget.index,
      "index" : index});
  }
}
