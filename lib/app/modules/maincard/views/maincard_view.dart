import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:flutter_dash/flutter_dash.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:get/get.dart';

import '../controllers/maincard_controller.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

import 'package:pretty_qr_code/pretty_qr_code.dart';

import 'package:shimmer/shimmer.dart';

final double dheight =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.height;
final double dwidth =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.width;
final flipcardcon = FlipCardController();

class MaincardView extends GetView<MaincardController> {
  const MaincardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          // width: 50,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                // <Widget>
                [
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 180,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   child: CircleAvatar(
                      //     radius: 45,
                      //     backgroundColor: Colors.white,
                      //     child: Icon(CupertinoIcons.person_alt_circle,
                      //         color: Colors.grey, size: 80),
                      //   ),
                      // ),
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              90), // Circular clip with a large radius
                          child: Image.asset(
                            'assets/profile_example.jpeg',
                            fit: BoxFit
                                .cover, // This will fill the entire container
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '김준연님',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'NotoSansbold',
                          fontSize: 15,
                        ),
                      ),

                      // Obx(
                      //   () => Text(
                      //     controller.subname.value,
                      //     style: TextStyle(
                      //       color: Colors.grey[800],
                      //       fontFamily: 'CJKMedium',
                      //       fontSize: 13,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[100],
                thickness: 0.8,
                endIndent: 30,
                indent: 30,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/kingologin');
                  },
                  child: const Text(
                    '계정 관리하기',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'CJKMedium',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    // launchUrl(
                    //   Uri.parse(
                    //       'https://brash-distance-4c3.notion.site/2ce3b22006f64d65ae92ea3f01ec4bc2?pvs=4'),
                    // );
                  },
                  child: const Text(
                    '알림 및 혜택',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'CJKMedium',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/kingologin');
                  },
                  child: const Text(
                    '결제 관리',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'CJKMedium',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Divider(
              //   color: Colors.grey[100],
              //   thickness: 0.8,
              //   endIndent: 30,
              //   indent: 30,
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              const SizedBox(
                height: 12,
              ),
              Divider(
                color: Colors.grey[100],
                thickness: 0.8,
                endIndent: 30,
                indent: 30,
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    // launchUrl(Uri.parse('https://pf.kakao.com/_cjxexdG'));
                  },
                  child: Text(
                    '고객센터',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontFamily: 'CJKMedium',
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    // launchUrl(
                    //   Uri.parse(
                    //       'https://brash-distance-4c3.notion.site/17f6a2ae496f4e6e95af6f8148e81f78?pvs=4'),
                    // );
                  },
                  child: Text(
                    '개인정보처리방침',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontFamily: 'CJKMedium',
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: const Color(0xFF161415),
          elevation: 0,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Builder(
            builder: (context) => Container(
              // color: AppColors.green_main,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 60,
                color: const Color(0xFF161415),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          // print('clicke!!!');
                          Scaffold.of(context).openDrawer();
                          // controller.fetchSecureStorage();
                        },
                        child: const Icon(
                          CupertinoIcons.list_bullet,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Image.asset(
                          'assets/applogo1.png',
                          // scale: 0.5,
                        ),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Get.toNamed('/camera');
                        },
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              decoration: BoxDecoration(
                color: Colors.grey[200]!,
              ),
              width: double.infinity,
              height: 600,
              child: DefaultTabController(
                length: controller.currentCardTotalNum.value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ButtonsTabBar(
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'NotosansBold',
                          fontSize: 13),
                      unselectedLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'NotosansBold',
                          fontSize: 13),
                      elevation: 0,
                      radius: 50,
                      backgroundColor: Colors.black,
                      unselectedBackgroundColor: Colors.grey[300],
                      tabs: List<Widget>.generate(
                        controller.tabTitles.length,
                        (index) => Tab(
                          text: controller.tabTitles[index],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          FlipCard(
                            controller: flipcardcon,
                            rotateSide: RotateSide.right,
                            onTapFlipping: true,
                            axis: FlipAxis.vertical,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            frontWidget: Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        17, 17, 17, 0),
                                    height: 420,
                                    width: 400,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              '',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'NotosansBold',
                                                  fontSize: 16),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                controller.loading.value = true;
                                                FlutterPlatformAlert.showAlert(
                                                  windowTitle: '정보 갱신',
                                                  text: 'QR코드가 새롭게 갱신되었습니다',
                                                  alertStyle:
                                                      AlertButtonStyle.ok,
                                                );
                                                Future.delayed(
                                                    const Duration(seconds: 3),
                                                    () {
                                                  controller.loading.value =
                                                      false;
                                                });
                                              },
                                              child: const Icon(
                                                CupertinoIcons.refresh,
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              17, 0, 17, 0),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 200,
                                                width:
                                                    200, // Set a fixed width equal to the height for a circle
                                                decoration: const BoxDecoration(
                                                  color: Colors
                                                      .red, // Background color
                                                  shape: BoxShape
                                                      .circle, // Makes the container circular
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          90), // Circular clip with a large radius
                                                  child: Image.asset(
                                                    'assets/profile_example.jpeg',
                                                    fit: BoxFit
                                                        .cover, // This will fill the entire container
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 37,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      controller
                                                              .card1Info1.value
                                                          ? const Text(
                                                              '김준연', // Ensure the string interpolation is correct
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            )
                                                          : const Text(
                                                              '익명', // Ensure the string interpolation is correct
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                      controller
                                                              .card1Info2.value
                                                          ? const Text(
                                                              '04.01.21', // Ensure the string interpolation is correct
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                            )
                                                          : const Text(
                                                              '생일 비공개', // Ensure the string interpolation is correct
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 15),
                                                            ),
                                                      controller
                                                              .card1Info3.value
                                                          ? const Text(
                                                              'M.010-7121-1069')
                                                          : const Text(
                                                              '전화번호 비공개'),
                                                      controller
                                                              .card1Info4.value
                                                          ? const Text(
                                                              'bobkim123@naver.com')
                                                          : const Text(
                                                              '이메일 비공개')
                                                    ],
                                                  ),
                                                  Obx(
                                                    () => !controller
                                                            .loading.value
                                                        ? PrettyQr(
                                                            data:
                                                                'http://43.201.203.28:5173/?imgUrl=https://i.imgur.com/5l8A2lO_d.webp?maxwidth=760&fidelity=grand&name=%EA%B9%80%EC%A4%80%EC%97%B0&dateOfBirth=2004.01.21&phoneNumber=010-7121-1069&safePhoneNumber=0504-6798-3765&email=bobkim@naver.com&expiration=2043.12.31&qrUrl=asdfsds&gender=1',
                                                            elementColor:
                                                                Colors.black,
                                                            roundEdges: false,
                                                            // image: const AssetImage(
                                                            //     'assets/images/skkulogo_black.png'),
                                                            size: 83,
                                                          )
                                                        : Shimmer.fromColors(
                                                            baseColor: Colors
                                                                .grey[400]!,
                                                            highlightColor:
                                                                const Color
                                                                    .fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                            child: Container(
                                                              height: 83,
                                                              width: 83,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                          ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                    ),
                                    child: Text(
                                      '유효기간 2021.10.01 ~ 2021.12.31 (3개월)',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontFamily: 'NotosansBold',
                                          fontSize: 10),
                                    ),
                                  ),
                                  GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () async {
                                      // 기본 명함에서 QR코드 설정을 눌렀을 경우
                                      showModalBottomSheet(
                                        context: context,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        builder: (BuildContext context) {
                                          return ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                            child: Container(
                                              height: 368,
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 20, 0),
                                              color: Colors
                                                  .white, // Changed background color for better visibility
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  const Text(
                                                    '표시할 정보 설정하기',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black),
                                                  ),
                                                  const SizedBox(height: 15),
                                                  GestureDetector(
                                                    onTap: () {
                                                      if (controller.card1Info1
                                                              .value ==
                                                          true) {
                                                        controller.card1Info1
                                                            .value = false;
                                                        controller.card1Text1
                                                            .value = '익명';
                                                      } else {
                                                        controller.card1Info1
                                                            .value = true;
                                                        controller.card1Text1
                                                            .value = '김준연';
                                                      }
                                                    },
                                                    child: Container(
                                                        width: double
                                                            .infinity, // Adjusted to take full width
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          20)),
                                                          color: Colors.grey[
                                                              300], // Changed to a more visible color
                                                        ),
                                                        alignment: Alignment
                                                            .center, // Added for center alignment of text
                                                        child: Obx(
                                                          () => Text(
                                                            controller
                                                                .card1Text1
                                                                .value, // Ensure the string interpolation is correct
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                        )),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  GestureDetector(
                                                    onTap: () {
                                                      if (controller.card1Info2
                                                              .value ==
                                                          true) {
                                                        controller.card1Info2
                                                            .value = false;
                                                        controller.card1Text2
                                                            .value = '생일 비공개';
                                                      } else {
                                                        controller.card1Info2
                                                            .value = true;
                                                        controller.card1Text2
                                                            .value = '04.01.21';
                                                      }
                                                    },
                                                    child: Container(
                                                        width: double
                                                            .infinity, // Adjusted to take full width
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          20)),
                                                          color: Colors.grey[
                                                              300], // Changed to a more visible color
                                                        ),
                                                        alignment: Alignment
                                                            .center, // Added for center alignment of text
                                                        child: Obx(
                                                          () => Text(
                                                            controller
                                                                .card1Text2
                                                                .value, // Ensure the string interpolation is correct
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                        )),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  GestureDetector(
                                                    onTap: () {
                                                      if (controller.card1Info3
                                                              .value ==
                                                          true) {
                                                        controller.card1Info3
                                                            .value = false;
                                                        controller.card1Text3
                                                            .value = '전화번호 비공개';
                                                      } else {
                                                        controller.card1Info3
                                                            .value = true;
                                                        controller.card1Text3
                                                                .value =
                                                            'M. 010-7121-1069';
                                                      }
                                                    },
                                                    child: Container(
                                                      width: double
                                                          .infinity, // Adjusted to take full width
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .all(
                                                                Radius.circular(
                                                                    20)),
                                                        color: Colors.grey[
                                                            300], // Changed to a more visible color
                                                      ),
                                                      alignment: Alignment
                                                          .center, // Added for center alignment of text
                                                      child: Obx(
                                                        () => Text(
                                                          controller.card1Text3
                                                              .value, // Ensure the string interpolation is correct
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  GestureDetector(
                                                    onTap: () {
                                                      if (controller.card1Info4
                                                              .value ==
                                                          true) {
                                                        controller.card1Info4
                                                            .value = false;
                                                        controller.card1Text4
                                                            .value = '이메일 비공개';
                                                      } else {
                                                        controller.card1Info4
                                                            .value = true;
                                                        controller.card1Text4
                                                                .value =
                                                            'bobkim123@naver.com';
                                                      }
                                                    },
                                                    child: Container(
                                                      width: double
                                                          .infinity, // Adjusted to take full width
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .all(
                                                                Radius.circular(
                                                                    20)),
                                                        color: Colors.grey[
                                                            300], // Changed to a more visible color
                                                      ),
                                                      alignment: Alignment
                                                          .center, // Added for center alignment of text
                                                      child: Obx(
                                                        () => Text(
                                                          controller.card1Text4
                                                              .value, // Ensure the string interpolation is correct
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 50,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: const Text(
                                        'QR코드 설정',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            backWidget: Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.fromLTRB(
                                        17, 17, 17, 0),
                                    height: 500,
                                    width: 400,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: PrettyQr(
                                      data:
                                          'http://43.201.203.28:5173/?imgUrl=https://i.imgur.com/5l8A2lO_d.webp?maxwidth=760&fidelity=grand&name=%EA%B9%80%EC%A4%80%EC%97%B0&dateOfBirth=2004.01.21&phoneNumber=010-7121-1069&safePhoneNumber=0504-6798-3765&email=bobkim@naver.com&expiration=2043.12.31&qrUrl=asdfsds&gender=1',
                                      elementColor: Colors.black,
                                      roundEdges: false,
                                      // image: const AssetImage(
                                      //     'assets/images/skkulogo_black.png'),
                                      size: 250,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (controller.newTitle1.value != ' ') ...[
                            Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.fromLTRB(
                                        17, 17, 17, 0),
                                    height: 500,
                                    width: 400,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.end,
                                        //   children: [
                                        //     GestureDetector(
                                        //       onTap: () {
                                        //         controller.removeCard();
                                        //       },
                                        //       child: const Icon(
                                        //         CupertinoIcons.delete,
                                        //       ),
                                        //     )
                                        //   ],
                                        // ),
                                        const SizedBox(
                                          height: 38,
                                        ),
                                        PrettyQr(
                                          data:
                                              'http://43.201.203.28:5173/?imgUrl=https://i.imgur.com/5l8A2lO_d.webp?maxwidth=760&fidelity=grand&name=%EA%B9%80%EC%A4%80%EC%97%B0&dateOfBirth=2004.01.21&phoneNumber=010-7121-1069&safePhoneNumber=0504-6798-3765&email=bobkim@naver.com&expiration=2043.12.31&qrUrl=asdfsds&gender=1',
                                          elementColor: Colors.black,
                                          roundEdges: false,
                                          // image: const AssetImage(
                                          //     'assets/images/skkulogo_black.png'),
                                          size: 250,
                                        ),
                                        const SizedBox(
                                          height: 35,
                                        ),
                                        Obx(() {
                                          var trueTexts =
                                              controller.getTrueInfoTexts();
                                          return Column(
                                            children: trueTexts
                                                .map((textPair) => Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          29, 0, 29, 0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "${textPair["label"]} ",
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(textPair[
                                                              "value"]!),
                                                        ],
                                                      ),
                                                    ))
                                                .toList(),
                                          );
                                        }),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          if (controller.newTitle2.value != ' ') ...[
                            Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.fromLTRB(
                                        17, 17, 17, 0),
                                    height: 500,
                                    width: 400,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 38,
                                        ),
                                        PrettyQr(
                                          data: 'tel://050-6798-3765',
                                          elementColor: Colors.black,
                                          roundEdges: false,
                                          // image: const AssetImage(
                                          //     'assets/images/skkulogo_black.png'),
                                          size: 250,
                                        ),
                                        const SizedBox(
                                          height: 35,
                                        ),
                                        Obx(() {
                                          var trueTexts =
                                              controller.getTrueInfoTexts();
                                          return const Column(children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  33, 0, 33, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "안심전화번호",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text('0504-6798-3765'),
                                                ],
                                              ),
                                            ),
                                          ]);
                                        }),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                          Center(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () async {
                                    if (controller.currentCardTotalNum.value <=
                                        3) {
                                      Get.toNamed('/addcard1');
                                    } else {
                                      showModalBottomSheet(
                                        context: context,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        builder: (BuildContext context) {
                                          return ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                            child: Container(
                                              height: 300,
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 20, 0),
                                              color: Colors
                                                  .white, // Changed background color for better visibility
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  const Text(
                                                    'QR코드가 더 필요하신가요?',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors
                                                            .black), // Ensured text color is black for visibility
                                                  ),
                                                  const SizedBox(height: 15),
                                                  Container(
                                                    width: double
                                                        .infinity, // Adjusted to take full width
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  20)),
                                                      color: Colors.grey[
                                                          300], // Changed to a more visible color
                                                    ),
                                                    alignment: Alignment
                                                        .center, // Added for center alignment of text
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'BASIC ', // Ensure the string interpolation is correct
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        Text(
                                                          '\$4.99/월', // Ensure the string interpolation is correct
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 18),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  Container(
                                                    width: double
                                                        .infinity, // Adjusted to take full width
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  20)),
                                                      color: Colors.grey[
                                                          300], // Changed to a more visible color
                                                    ),
                                                    alignment: Alignment
                                                        .center, // Added for center alignment of text
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'STANDARD ', // Ensure the string interpolation is correct
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        Text(
                                                          '\$8.99/월', // Ensure the string interpolation is correct
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 18),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  Container(
                                                    width: double
                                                        .infinity, // Adjusted to take full width
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  20)),
                                                      color: Colors.grey[
                                                          300], // Changed to a more visible color
                                                    ),
                                                    alignment: Alignment
                                                        .center, // Added for center alignment of text
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'PREMIUM ', // Ensure the string interpolation is correct
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        Text(
                                                          '\$9.99/월', // Ensure the string interpolation is correct
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 18),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }
                                  },
                                  child: DottedBorder(
                                    strokeCap: StrokeCap.round,
                                    borderType: BorderType.values[2],
                                    color: Colors.grey[500]!,
                                    strokeWidth: 2.0,
                                    dashPattern: const [8, 6],
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.fromLTRB(
                                          17, 17, 17, 17),
                                      height: 500,
                                      width: 400,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                        // color: Colors.white,
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.add_circle),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('QR 코드 추가하기'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
