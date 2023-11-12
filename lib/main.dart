import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:unidthon/app/modules/login/views/login_view.dart';

import 'app/routes/app_pages.dart';

const YOUR_NATIVE_APP_KEY = 'a4d9a3efa641b8acfdba9eac2d0414f1';

void main() {
  
  KakaoSdk.init(
        nativeAppKey: '${YOUR_NATIVE_APP_KEY}',
    );

  
  
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
