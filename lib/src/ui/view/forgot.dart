import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/commonBtn.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/ui/widgets/container_widget.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:get/get.dart';
class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            ContainerWidgets(title: "Please Enter Your Credentials to get Access", text: "Forgot"),
            SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormFildWidgets(title: 'Email ID', icon: Icons.email_outlined),
                  SizedBox(
                    height: 40,
                  ),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: TextButton(
                  //     onPressed: (){
                  //       Get.toNamed(Routes.login);
                  //     },
                  //     // onPressed: () async {
                  //     //   // var sharedpref= await SharedPreferences.getInstance();
                  //     //   // SmartDialog.showLoading(msg: "Please Wait..");
                  //     //   // String email = _emailController.text.toString();
                  //     //   // String password = _passwordController.text.toString();
                  //     //   // FirebaseAuth.instance.signInWithEmailAndPassword(email: email,
                  //     //   //     password: password).then((value){
                  //     //   //   sharedpref.setBool(keyLogIn, true);
                  //     //   //   // await loginInWithEmailAndPassword();
                  //     //   //   // if(value != null){
                  //     //   //   print("Created New Account");
                  //     //   //   SmartDialog.dismiss();
                  //     //   // }).onError((error, stackTrace){
                  //     //   //
                  //     //   //   SmartDialog.dismiss();
                  //     //   //   Fluttertoast.showToast(msg: "Error :${error.toString()}");
                  //     //   //
                  //     //   // });
                  //     // },
                  //     style: TextButton.styleFrom(
                  //         backgroundColor: UIDataColors.commonColor,
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(6)),
                  //         padding: const EdgeInsets.symmetric(
                  //           vertical: 20,)),
                  //     child: const Text('Submit',
                  //         style: TextStyle(color: Colors.white)),
                  //   ),
                  // ),

                  CommonBtn(title: 'Submit',onPressd: (){Get.toNamed(Routes.login);},)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
