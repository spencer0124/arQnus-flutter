import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../controllers/camera_controller.dart';

import 'package:flutter/foundation.dart';

// class CameraView extends GetView<CameraController> {
//   const CameraView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('CameraView'),
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text(
//           'CameraView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

class CameraView extends StatelessWidget {
  final CameraController qrScanController = Get.put(CameraController());

  CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrScanController.qrKey,
              onQRViewCreated: qrScanController.onQRViewCreated,
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Center(
          //     child: Obx(() => Text(qrScanController.result != null
          //         ? 'Barcode Type: ${describeEnum(qrScanController.result!.format)}   Data: ${qrScanController.result!.code}'
          //         : 'Scan a code')),
          //   ),
          // )
        ],
      ),
    );
  }
}
