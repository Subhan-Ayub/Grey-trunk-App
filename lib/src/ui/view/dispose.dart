import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/commonBtn.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';
class Dispose extends StatelessWidget {
  const Dispose({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appbar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormFildWidgets(title: 'Dispose Date', icon: Icons.date_range,onPressd: ()async{
              DateTime? pickedDate = await showDatePicker(context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime(2050));
              if(pickedDate != null){
              }
            }),
            SizedBox(height: 20,),

            TextFormFildWidgets(title: 'Disposal reason', icon: Icons.keyboard_arrow_down_sharp),
            Spacer(),
            CommonBtn(title: 'ADD SITE',onPressd: (){Get.toNamed(Routes.assetsDetails);},)
          ],
        ),
      ),
    );
  }
  PreferredSize appbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1.0,
              blurRadius: 3.0,
              offset: Offset(0.0, 2.0),
            ),
          ],
        ),
        child: AppBar(
          title: Text(
            'DISPOSE',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
