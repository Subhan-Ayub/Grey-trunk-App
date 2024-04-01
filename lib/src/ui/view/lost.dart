import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
class Lost extends StatelessWidget {
  const Lost({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text('LOST',style: TextStyle(fontSize: 16),),
        centerTitle: true,
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

            TextFormFildWidgets(title: 'Note', icon: Icons.keyboard_arrow_down_sharp),
            Spacer(),
            SizedBox(width:  double.infinity,
              child: TextButton(
                onPressed: (){
                  // Get.toNamed(Routes.dashboard);
                },
                style: TextButton.styleFrom(
                    backgroundColor: UIDataColors.commonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,)),
                child: const Text('LOST',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
