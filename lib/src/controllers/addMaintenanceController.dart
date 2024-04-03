import 'package:get/get.dart';

class AddMaintenanceController extends GetxController{
  final Rx<String> selectedValue = RxString('initial_value'); 

  void onRadioSelected(String value) {
    selectedValue.value = value;
    print(value);
    // update();
  }


}