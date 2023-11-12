import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Get.toNamed('/login');
              },
              child: const SizedBox(
                child: Text('login 페이지로 이동하기'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Get.toNamed('/maincard');
              },
              child: const SizedBox(
                child: Text('main 페이지로 이동하기'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Get.toNamed('/setting');
              },
              child: const SizedBox(
                child: Text('setting 페이지로 이동하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
