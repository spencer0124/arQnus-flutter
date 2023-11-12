import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
// import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import '../controllers/login_controller.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

final double dheight =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.height;
final double dwidth =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.width;

abstract class SocialLogin {
  Future<bool> login();
}

class KaKaoLogin implements SocialLogin {
  Future<bool> login() async {
    try {
      if (await isKakaoTalkInstalled()) {
        try {
          await UserApi.instance.loginWithKakaoTalk();
          print("1");
          return true;
        } on Exception catch (e) {
          print("2");
          return false;
        }
      } else {
        try {
          await UserApi.instance.loginWithKakaoAccount();
          print("3");
          return true;
        } on Exception catch (e) {
          print("4");
          return false;
        }
      }
    } catch (e) {
      print("5");
      return false;
    }
  }
}

class MainViewModel {
  late final SocialLogin _socialLogin;
  bool isLogined = false;
  User? user;

  MainViewModel(SocialLogin s) {
    _socialLogin = s;
  }

  Future<void> login() async {
    isLogined = await _socialLogin.login();
    if (isLogined) {
      user = await UserApi.instance.me();
      print("good");
    } else {
      print("not good");
    }
  }
}

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  late MainViewModel viewModel;
  Future<bool> LOGIN() async {
    print('login not done');
    await (viewModel = await MainViewModel(KaKaoLogin())).login();

    //mainViewModel에서 kakaoAccount정보들 json으로 떼서 api 쏴주는 부분 블라블라.. 어쩌구.......

    print('login done');
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161415),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: const Color(0xFF161415),
          elevation: 0,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/applogo1.png',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "arQnus",
              style: TextStyle(
                color: Colors.white,
                fontSize: 72,
                shadows: [
                  Shadow(
                      blurRadius: 10.0, // shadow blur
                      color: Colors.grey, // shadow color
                      offset: Offset(0, 2.0)),
                ],
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "QR 하나에 모든것을 담다.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                shadows: [
                  Shadow(
                      blurRadius: 2.0, // shadow blur
                      color: Colors.grey, // shadow color
                      offset: Offset(0, 0.0)),
                ],
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 220,
            ),
            GestureDetector(
              onTap: () async {
                var b = await LOGIN();
                if (b) Get.offAllNamed('/maincard');
              },
              child: SizedBox(
                child: Image.asset('assets/kakao_login.png'),
                height: 80,
                width: 190,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
