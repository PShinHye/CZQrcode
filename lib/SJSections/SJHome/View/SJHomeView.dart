
import 'package:cz_qrcode/SJGeneral/SJBase/SJBaseRoute.dart';
import 'package:cz_qrcode/SJSections/SJMcaros/SJColors.dart';
import 'package:cz_qrcode/SJSections/SJMcaros/SJImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SJHomeView extends StatefulWidget {
  const SJHomeView({Key? key}) : super(key: key);

  @override
  _SJHomeViewState createState() => _SJHomeViewState();
}

class _SJHomeViewState extends State<SJHomeView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  var cellImgArr = [SJImg.logoOne, SJImg.logoTwo, SJImg.logoThree, SJImg.logoFour,
    SJImg.logoFive, SJImg.logoSix];
  var cellNameArr = ['路宝', '路宝+', '车运通', '车席安', '安全培训', '掌柜'];

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
      itemCount: cellNameArr.length,
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
                const SizedBox ( width: 15 ),
                Container (
                  width: 45.sp,
                  height: 45.sp,
                  decoration: BoxDecoration (
                    image: DecorationImage(
                      image: AssetImage(cellImgArr[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox (width: 10),
                Expanded(
                  child: Text(
                    cellNameArr[index],
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

    Navigator.of(context).pushNamed(SJBaseRoute.rHomeTag, arguments: {"index" : index});
  }
}
