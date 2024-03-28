import 'package:flutter_application_1/src/bindings/dashboard_bindings.dart';
import 'package:flutter_application_1/src/ui/view/addAsset.dart';
import 'package:flutter_application_1/src/ui/view/dashboard.dart';
import 'package:flutter_application_1/src/ui/view/forgot.dart';
import 'package:flutter_application_1/src/ui/view/login.dart';
import 'package:flutter_application_1/src/ui/view/singup.dart';
import 'package:flutter_application_1/src/ui/view/splash_screen.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
   static const String INITIAL = Routes.splash;
  static final List<GetPage<dynamic>> routes = [
    GetPage(name: Routes.splash, page: ()=> SplashScreen(),transition: Transition.noTransition),
    GetPage(name: Routes.login, page: ()=> LogIn(),transition: Transition.noTransition),
    GetPage(name: Routes.singUp, page: ()=> SingUpScreen(),transition: Transition.noTransition),
    GetPage(name: Routes.forgot, page: ()=> ForgotScreen(),transition: Transition.noTransition),

    GetPage(
        name: Routes.dashboard,
        page: () => Dashboard(),
        binding: DashboardBindings(),
        transition: Transition.noTransition),
    GetPage(name: Routes.addAsset, page: ()=> AddAssets(),transition: Transition.noTransition),

  ];
}