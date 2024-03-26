import 'package:flutter_application_1/src/bindings/dashboard_bindings.dart';
import 'package:flutter_application_1/src/ui/view/dashboard.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static const String INITIAL = Routes.dashboard;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
        name: Routes.dashboard,
        page: () => Dashboard(),
        binding: DashboardBindings(),
        transition: Transition.noTransition)
  ];
}
