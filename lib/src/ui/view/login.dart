import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/login_controller.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/ui/widgets/container_widget.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:get/get.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
   // LoginScreenController _ = Get.find<LoginScreenController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            ContainerWidgets(title: "Please Enter Your Credentials to get Access", text: "Login"),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormFildWidgets(title: 'Email ID', icon: Icons.email_outlined),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormFildWidgets(title: 'Password', icon: Icons.lock_outline),
                  SizedBox(height: 15,),
                  Align(alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.forgot);
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 14,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: (){
                        Get.toNamed(Routes.dashboard);
                      },
                      // onPressed: () async {
                      //   // var sharedpref= await SharedPreferences.getInstance();
                      //   // SmartDialog.showLoading(msg: "Please Wait..");
                      //   // String email = _emailController.text.toString();
                      //   // String password = _passwordController.text.toString();
                      //   // FirebaseAuth.instance.signInWithEmailAndPassword(email: email,
                      //   //     password: password).then((value){
                      //   //   sharedpref.setBool(keyLogIn, true);
                      //   //   // await loginInWithEmailAndPassword();
                      //   //   // if(value != null){
                      //   //   print("Created New Account");
                      //   //   SmartDialog.dismiss();
                      //   // }).onError((error, stackTrace){
                      //   //
                      //   //   SmartDialog.dismiss();
                      //   //   Fluttertoast.showToast(msg: "Error :${error.toString()}");
                      //   //
                      //   // });
                      // },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,)),
                      child: const Text('Login',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.signUp);
                      },
                      child: Text(
                        "Dont Have ant Account? SignUp",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff4c505b),
                          fontSize: 18,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
