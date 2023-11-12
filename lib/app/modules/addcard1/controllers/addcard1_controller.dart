import 'package:get/get.dart';
import 'package:unidthon/app/modules/maincard/controllers/maincard_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Addcard1Controller extends GetxController {
  final TextEditingController textEditingController = TextEditingController();

  var baseUrl = 'http://43.201.203.28:9000/api/card';

  void saveText() {
    String textValue = textEditingController.text;
    // Use textValue as needed
    print('Entered Text: $textValue');
  }

  final controller2 = Get.find<MaincardController>();

  final options = ["연령대", "생년월일", "이메일", "성별", "실명", "전화번호", "안심번호"].obs;

  final RxSet<String> selectedOptions = <String>{}.obs;
  void toggleOption(String option) {
    if (option == "전화번호" || option == "안심번호") {
      if (selectedOptions.contains(option)) {
        selectedOptions.remove(option);
      } else {
        if (option == "전화번호") {
          selectedOptions.remove("안심번호");
        } else {
          selectedOptions.remove("전화번호");
        }
        selectedOptions.add(option);
      }
    } else {
      if (selectedOptions.contains(option)) {
        selectedOptions.remove(option);
      } else {
        selectedOptions.add(option);
      }
    }
    update();
  }

  void saveSelections() async {
    print('Selected Options: ${selectedOptions.toList()}');

    if (selectedOptions.contains("연령대")) {
      controller2.card2Info1.value = true;
    }
    if (selectedOptions.contains("생년월일")) {
      controller2.card2Info2.value = true;
    }
    if (selectedOptions.contains("이메일")) {
      controller2.card2Info3.value = true;
    }
    if (selectedOptions.contains("성별")) {
      controller2.card2Info4.value = true;
    }
    if (selectedOptions.contains("실명")) {
      controller2.card2Info5.value = true;
    }
    if (selectedOptions.contains("전화번호")) {
      controller2.card2Info6.value = true;
    }
    if (selectedOptions.contains("안심번호")) {
      controller2.card2Info7.value = true;
    }

    controller2.addCard(textEditingController.text);
    var body = jsonEncode({
      "dateOfBirth": true,
      "name": false,
      "email": true,
      "phoneNumber": true,
      "safePhoneNumber": true,
      "description": false,
      "gender": true,
      "expiration": "2023-12-12 23:10:10"
    });
    final response = await http.get(Uri.parse(baseUrl));
    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {"Content-Type": "application/json"},
        body: body,
      );
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        print('Response data: ${response.body}');
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        print('Failed to load data');
      }
    } catch (exception) {
      // Handle any exceptions here
      print('Error: $exception');
    }
  }

  String getExampleText(String option) {
    switch (option) {
      case "연령대":
        return "20살";
      case "생년월일":
        return "04";
      case "이메일":
        return "gildong04@naver.com";
      case "성별":
        return "남";
      case "실명":
        return "홍길동";
      case "전화번호":
        return "010-1234-5678";
      case "안심번호":
        return "050-6798-3765";
      default:
        return "정보를 가져올 수 없습니다";
    }
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }
}
