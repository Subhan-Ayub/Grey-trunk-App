import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';
class AddSite extends StatefulWidget {
  const AddSite({super.key});

  @override
  State<AddSite> createState() => _AddSiteState();
}

class _AddSiteState extends State<AddSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Site',style: TextStyle(fontSize: 16,),),
        centerTitle:true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormFildWidgets(title: 'Site Nme', icon: Icons.keyboard_arrow_down_sharp),
            SizedBox(height: 20,),
            TextFormFildWidgets(title: 'Description', icon: Icons.keyboard_arrow_down_sharp),
            SizedBox(height: 20,),

            TextFormFildWidgets(title: 'Address', icon: Icons.keyboard_arrow_down_sharp),
            SizedBox(height: 20,),

            TextFormFildWidgets(title: 'City', icon: Icons.keyboard_arrow_down_sharp),
            SizedBox(height: 20,),

            TextFormFildWidgets(title: 'State', icon: Icons.keyboard_arrow_down_sharp),
            SizedBox(height: 20,),

            TextFormFildWidgets(title: 'Postal Code', icon: Icons.keyboard_arrow_down_sharp),
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
