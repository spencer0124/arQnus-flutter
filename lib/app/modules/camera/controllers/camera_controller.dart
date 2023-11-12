import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CameraController extends GetxController {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? result;

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      result = scanData;
      navigateToMainCard();
    });
  }

  void navigateToMainCard() {
    // Navigate to "/maincard" route when a QR code is scanned
    if (result != null) {
      Get.toNamed("/camera2");
    }
  }

  @override
  void onClose() {
    controller?.dispose();
    super.onClose();
  }
}
