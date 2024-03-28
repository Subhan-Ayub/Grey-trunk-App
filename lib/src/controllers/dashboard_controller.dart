import 'package:flutter_application_1/src/ui/view/dashboard.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{
  late List<ChartData> data;
  // late TooltipBehavior _tooltip;
 @override
  void onInit() async {
  data = [
      ChartData('David', 25),
      ChartData('Steve', 38),
      ChartData('Jack', 80),
      ChartData('Others', 52)
    ];
  }

}