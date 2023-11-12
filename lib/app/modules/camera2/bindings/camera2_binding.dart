import 'package:get/get.dart';

import '../controllers/camera2_controller.dart';

class Camera2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Camera2Controller>(
      () => Camera2Controller(),
    );
  }
}
