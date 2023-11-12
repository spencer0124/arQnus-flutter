import 'package:get/get.dart';

import '../controllers/modifycard1_controller.dart';

class Modifycard1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Modifycard1Controller>(
      () => Modifycard1Controller(),
    );
  }
}
