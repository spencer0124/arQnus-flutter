import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/addcard1_controller.dart';

final double dheight =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.height;
final double dwidth =
    MediaQueryData.fromView(WidgetsBinding.instance.window).size.width;

class Addcard1View extends GetView<Addcard1Controller> {
  const Addcard1View({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //FocusManager.instance.primaryFocus?.unfocus();
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[200],
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
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 60,
                color: const Color(0xFF161415),
                child: SizedBox(
                  width: 60,
                  child: Image.asset(
                    'assets/applogo1.png',
                    // scale: 0.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // Container(
              //   width: dwidth * 0.8,
              //   height: 44,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(30),
              //     color: Colors.grey[300],

              //   ),
              //   child: ,
              // ),
              SizedBox(
                width: dwidth * 0.85,
                child: TextField(
                  controller: controller.textEditingController,
                  autocorrect: false,
                  enableSuggestions: true,
                  enableIMEPersonalizedLearning: true,
                  // keyboardType: TextInputType.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    hintText: 'QR 코드 이름 입력',
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 16, 10, 16),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 0, 0, 0),
                  child: Column(
                    children: controller.options
                        .map(
                          (option) => ListTile(
                            leading: Transform.scale(
                              scale: 1.0,
                              child: Checkbox(
                                activeColor: const Color(0xFF161415),
                                shape: const CircleBorder(),
                                value:
                                    controller.selectedOptions.contains(option),
                                onChanged: (bool? value) {
                                  controller.toggleOption(option);
                                },
                              ),
                            ),
                            title: RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: option),
                                  const TextSpan(text: '\n'),
                                  TextSpan(
                                    text: controller.getExampleText(option),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      // fontStyle: FontStyle.italic,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () => {
                  controller.saveSelections(),
                  // Get.toNamed('/maincard'),
                  Get.back()
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black, // Text color
                ),
                child: const Text('     QR코드 생성하기     '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
