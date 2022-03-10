
import 'package:cz_qrcode/SJSections/SJHome/View/SJHomeTagView.dart';
import 'package:cz_qrcode/SJSections/SJMcaros/SJColors.dart';
import 'package:flutter/material.dart';

class SJHomeTagVC extends StatefulWidget {
  const SJHomeTagVC({Key? key, this.arguments}) : super(key: key);

  final Map? arguments;

  @override
  _SJHomeTagVCState createState() => _SJHomeTagVCState();
}

class _SJHomeTagVCState extends State<SJHomeTagVC> with SingleTickerProviderStateMixin {
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

    return Scaffold (
      appBar: AppBar (
        title: const Text("Tag"),
        backgroundColor: SJColors.c5EC0B3,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SJHomeTagView(index: arguments?["index"]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
