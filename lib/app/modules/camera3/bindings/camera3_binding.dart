import 'package:get/get.dart';

import '../controllers/camera3_controller.dart';

class Camera3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Camera3Controller>(
      () => Camera3Controller(),
    );
  }
}
