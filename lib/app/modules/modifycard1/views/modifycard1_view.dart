import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/modifycard1_controller.dart';

class Modifycard1View extends GetView<Modifycard1Controller> {
  const Modifycard1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modifycard1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Modifycard1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
