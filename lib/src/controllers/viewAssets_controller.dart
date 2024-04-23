import 'package:flutter_application_1/src/utils/helpers/db_helper.dart';
import 'package:get/get.dart';

class ViewAssetsController extends GetxController {
  DatabaseHelper db = Get.put(DatabaseHelper());
  dynamic data=[];
  RxBool isLoading = true.obs;
  @override
  void onInit() async {
    getData();
    super.onInit();
  }

  getData() async {
    data = await db.getTasks('assets');
    print(data);
    isLoading.value = false;
  }
}
