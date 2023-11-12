import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MaincardController extends GetxController {
  RxBool card1Info1 = true.obs;
  RxBool card1Info2 = true.obs;
  RxBool card1Info3 = true.obs;
  RxBool card1Info4 = true.obs;
  RxString card1Text1 = "김준연".obs;
  RxString card1Text2 = "04.01.21".obs;
  RxString card1Text3 = "010-7121-1069".obs;
  RxString card1Text4 = "bobkim123@naver.com".obs;

  RxBool card2Info1 = false.obs;
  RxBool card2Info2 = false.obs;
  RxBool card2Info3 = false.obs;
  RxBool card2Info4 = false.obs;
  RxBool card2Info5 = false.obs;
  RxBool card2Info6 = false.obs;
  RxBool card2Info7 = false.obs;

  RxBool loading = false.obs;
  RxString newTitle1 = ' '.obs;
  RxString newTitle2 = ' '.obs;
  // RxBool first = false.obs;
  // RxBool second = false.obs;

  List<Map<String, String>> getTrueInfoTexts() {
    List<Map<String, String>> texts = [];
    if (card2Info1.value) texts.add({"label": "연령대", "value": "20대"});
    if (card2Info2.value) texts.add({"label": "생년월일", "value": "04.01.21"});
    if (card2Info3.value) {
      texts.add({"label": "이메일", "value": "bobkim123@naver.com"});
    }
    if (card2Info4.value) texts.add({"label": "성별", "value": "남자"});
    if (card2Info5.value) texts.add({"label": "실명", "value": "김준연"});
    if (card2Info6.value) {
      texts.add({"label": "전화번호", "value": "010-7121-1069"});
    }
    if (card2Info7.value) {
      texts.add({"label": "안심번호", "value": "050-6798-3765"});
    }
    // ... continue for all your fields
    return texts;
  }

  RxInt currentCardTotalNum = 2.obs;

  void removeCard() {
    --currentCardTotalNum.value;
    tabTitles.remove(newTitle1.value);
    newTitle1.value = ' ';
  }

  void addCard(String title) {
    print(tabTitles);
    ++currentCardTotalNum.value;
    if (newTitle1.value == ' ') {
      tabTitles.insert(currentCardTotalNum.value - 2, '  $title  ');
      newTitle1.value = title;
    } else {
      tabTitles.insert(currentCardTotalNum.value - 2, '  $title  ');
      newTitle2.value = title;
    }

    print(tabTitles);
  }

  //TODO: Implement MaincardController

  final count = 0.obs;

  // RxList for the tab titles including the '+ 추가하기'
  var tabTitles = ['  명함 QR  ', '  + 추가하기  '].obs;

  // Corresponding views for each tab
  // var tabViews =
  //     <Widget>[YourFirstCard(), YourSecondCard(), YourThirdCard()].obs;

  void increment() => count.value++;
}
