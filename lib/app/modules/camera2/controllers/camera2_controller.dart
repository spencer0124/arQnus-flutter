import 'package:get/get.dart';

class Camera2Controller extends GetxController {
  var opacity = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    fadeInContent();
  }

  void fadeInContent() async {
    await Future.delayed(const Duration(seconds: 2));
    opacity.value = 1.0; // Update opacity to fade in the content
  }
}
