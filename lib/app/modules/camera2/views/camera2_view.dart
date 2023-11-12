import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:unidthon/app/modules/addcard1/views/addcard1_view.dart';
import '../controllers/camera2_controller.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class Camera2View extends GetView<Camera2Controller> {
  const Camera2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 120),
            SizedBox(
              width: 180,
              child: Lottie.asset(
                'assets/logindone.json',
                repeat: false,
              ),
            ),
            Obx(() => AnimatedOpacity(
                  opacity: controller.opacity.value,
                  duration:
                      const Duration(seconds: 1), // Duration of fade animation
                  child: Column(
                    children: [
                      const Text(
                        '정보를 성공적으로 불러왔어요',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Get.offAllNamed('/maincard');
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                          alignment: Alignment.center,
                          width: dwidth * 0.8,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[300],
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '김준연', // Ensure the string interpolation is correct
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '04.01.21', // Ensure the string interpolation is correct
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text('M.010-7121-1069'),
                                  Text('bobkim123@naver.com'),
                                ],
                              ),
                              PrettyQr(
                                data:
                                    'http://43.201.203.28:5173/?imgUrl=https://i.imgur.com/5l8A2lO_d.webp?maxwidth=760&fidelity=grand&name=%EA%B9%80%EC%A4%80%EC%97%B0&dateOfBirth=2004.01.21&phoneNumber=010-7121-1069&safePhoneNumber=0504-6798-3765&email=bobkim@naver.com&expiration=2043.12.31&qrUrl=asdfsds&gender=1',
                                elementColor: Colors.black,
                                roundEdges: false,
                                // image: const AssetImage(
                                //     'assets/images/skkulogo_black.png'),
                                size: 83,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
