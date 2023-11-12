import 'package:get/get.dart';

import '../modules/addcard1/bindings/addcard1_binding.dart';
import '../modules/addcard1/views/addcard1_view.dart';
import '../modules/camera/bindings/camera_binding.dart';
import '../modules/camera/views/camera_view.dart';
import '../modules/camera2/bindings/camera2_binding.dart';
import '../modules/camera2/views/camera2_view.dart';
import '../modules/camera3/bindings/camera3_binding.dart';
import '../modules/camera3/views/camera3_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/maincard/bindings/maincard_binding.dart';
import '../modules/maincard/views/maincard_view.dart';
import '../modules/modifycard1/bindings/modifycard1_binding.dart';
import '../modules/modifycard1/views/modifycard1_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MAINCARD,
      page: () => const MaincardView(),
      binding: MaincardBinding(),
    ),
    GetPage(
      name: _Paths.ADDCARD1,
      page: () => const Addcard1View(),
      binding: Addcard1Binding(),
    ),
    GetPage(
      name: _Paths.MODIFYCARD1,
      page: () => const Modifycard1View(),
      binding: Modifycard1Binding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA,
      page: () => CameraView(),
      binding: CameraBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA2,
      page: () => const Camera2View(),
      binding: Camera2Binding(),
    ),
    GetPage(
      name: _Paths.CAMERA3,
      page: () => const Camera3View(),
      binding: Camera3Binding(),
    ),
  ];
}
