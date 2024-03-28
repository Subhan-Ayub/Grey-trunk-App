import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/utils/widgets/container_widget.dart';
import 'package:flutter_application_1/src/utils/widgets/textformfild_widgets.dart';
import 'package:get/get.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            ContainerWidgets(title: "Please Enter Your Credentials to get Access", text: "SingUp"),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormFildWidgets(title: 'First Name', icon: Icons.perm_identity),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormFildWidgets(title: 'Last Name', icon: Icons.perm_identity),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormFildWidgets(title: 'Email ID', icon: Icons.email_outlined),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormFildWidgets(title: 'Password', icon: Icons.lock_outline),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormFildWidgets(title: 'Confirm Password', icon: Icons.lock_outline),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () async {
                        Get.toNamed(Routes.login);
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,)),
                      child: const Text('SingUp',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
