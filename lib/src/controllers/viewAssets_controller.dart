import 'package:flutter_application_1/src/utils/helpers/db_helper.dart';

import 'package:get/get.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class ViewAssetsController extends GetxController {
  DatabaseHelper db = Get.put(DatabaseHelper());
  dynamic data = [];
  RxBool isLoading = true.obs;
  // final RxString result = ''.obs;
  List check=[];

  dynamic scanId = '';
  scanData(id) {
    isLoading.value = true;
    // scanId = id;
    check.add(id);
    isLoading.value = false;
  }

  @override
  void onInit() async {
    getData();
    super.onInit();
  }

  Future<void> viewAsset() async {

    var res = await Get.to<String>(() => SimpleBarcodeScannerPage());
    print(res);
    if (res != null) {
      scanData(res);
     
    }
  }

  getData() async {
    data = await db.getTasks('assets');
    print(data);
    isLoading.value = false;
  }
}
