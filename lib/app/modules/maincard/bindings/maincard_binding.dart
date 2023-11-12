import 'package:get/get.dart';

import '../controllers/maincard_controller.dart';

class MaincardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaincardController>(
      () => MaincardController(),
    );
  }
}
