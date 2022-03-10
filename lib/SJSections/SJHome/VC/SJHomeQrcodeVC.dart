
import 'package:cz_qrcode/SJSections/SJHome/View/SJHomeQrcodeView.dart';
import 'package:cz_qrcode/SJSections/SJMcaros/SJColors.dart';
import 'package:flutter/material.dart';

class SJHomeQrcodeVC extends StatefulWidget {
  const SJHomeQrcodeVC({Key? key, this.arguments}) : super(key: key);

  final Map? arguments;

  @override
  _SJHomeQrcodeVCState createState() => _SJHomeQrcodeVCState();
}

class _SJHomeQrcodeVCState extends State<SJHomeQrcodeVC> with SingleTickerProviderStateMixin {
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

    Map? arguments = ModalRoute.of(context)?.settings.arguments as Map?;

    // print('----值${arguments}');
    return Scaffold (
      appBar: AppBar (
        title: const Text("QRcode"),
        backgroundColor: SJColors.c5EC0B3,
        centerTitle: true,
      ),
      body: SJHomeQrcodeView(type: arguments?["type"], index: arguments?["index"]),
    );
  }
}
