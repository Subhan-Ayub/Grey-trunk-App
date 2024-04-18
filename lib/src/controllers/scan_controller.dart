import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class ScanController extends GetxController {
  final TextEditingController siteController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  var selectedRadio = 'Option1'.obs;
  final RxBool showTextField = true.obs;
  final RxString result = ''.obs;

  void setSelectedRadio(String value) {
    selectedRadio.value = value;
    // showTextField.value = value == 'Option2';
  }


  Future<void> startScan() async {
    var res = await Get.to<String>(SimpleBarcodeScannerPage());
    if (res != null) {
      result.value = res;
    }
  }

  @override
  void onClose() {
    siteController.dispose();
    locationController.dispose();
    super.onClose();
  }
}
