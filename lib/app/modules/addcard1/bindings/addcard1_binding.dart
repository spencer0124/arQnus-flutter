import 'package:get/get.dart';

import '../controllers/addcard1_controller.dart';

class Addcard1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Addcard1Controller>(
      () => Addcard1Controller(),
    );
  }
}
