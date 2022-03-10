
import 'package:cz_qrcode/SJSections/SJHome/View/SJHomeHeaderView.dart';
import 'package:cz_qrcode/SJSections/SJHome/View/SJHomeView.dart';
import 'package:flutter/material.dart';

class SJHomeVC extends StatefulWidget {
  const SJHomeVC({Key? key}) : super(key: key);

  @override
  _SJHomeVCState createState() => _SJHomeVCState();
}

class _SJHomeVCState extends State<SJHomeVC> with SingleTickerProviderStateMixin {
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
    /// 去除顶部默认安全距离
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                SJHomeHeaderView(),
                SJHomeView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
