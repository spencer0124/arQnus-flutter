import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/camera3_controller.dart';

class Camera3View extends GetView<Camera3Controller> {
  const Camera3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera3View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Camera3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
