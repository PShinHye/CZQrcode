
import 'package:cz_qrcode/SJSections/SJMcaros/SJColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SJHomeHeaderView extends StatefulWidget {
  const SJHomeHeaderView({Key? key}) : super(key: key);

  @override
  _SJHomeHeaderViewState createState() => _SJHomeHeaderViewState();
}

class _SJHomeHeaderViewState extends State<SJHomeHeaderView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
      child: Center(
        child: Text(
          "席众车联网项目地址汇总",
          style: TextStyle(
            color: SJColors.hexColor(0x212120),
            fontSize: 35.sp,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
