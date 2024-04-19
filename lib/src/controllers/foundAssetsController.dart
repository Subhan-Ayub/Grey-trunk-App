import 'package:flutter_application_1/src/utils/uidata/staticData.dart';
import 'package:get/get.dart';

class FoundAssetsController extends GetxController {
  List filterData = [];
  var arg = Get.arguments;
  // var scandata = arg;
  foundAssest() {
        print(arg);
    filterData = data
        .where((assets) => assets['id']!
            .toLowerCase()
            .toString()
            .contains(arg.toLowerCase()))
        .toList();
    print(filterData);
  }

  @override
  void onInit() {
    print('object');
    foundAssest();
    super.onInit();

  }
 
}
