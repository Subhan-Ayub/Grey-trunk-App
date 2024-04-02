import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';
class AddLocation extends StatefulWidget {
  const AddLocation({super.key});

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('ADD NEW LOCATION',style: TextStyle(fontSize: 16,
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormFildWidgets(title: 'Site', icon: Icons.keyboard_arrow_down_sharp),
            SizedBox(height: 20,),

            TextFormFildWidgets(title: 'Location', icon: Icons.keyboard_arrow_down_sharp),
            Spacer(),

            SizedBox(width:  double.infinity,
              child: TextButton(
                onPressed: (){
                  Get.toNamed(Routes.checkout);
                },
                style: TextButton.styleFrom(
                    backgroundColor: UIDataColors.commonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,)),
                child: const Text('ADD SITE',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
