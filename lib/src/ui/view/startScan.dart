import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  static const String option1 = 'Option 1';
  static const String option2 = 'Option 2';

  String selectedRadio = option1;

  bool showTextField = false;

  void setSelectedRadio(String value) {
    setState(() {
      selectedRadio = value;
      if (value == option2) {
        showTextField = true;
      } else {
        showTextField = false;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text('SCAN',style: TextStyle(fontSize: 16),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Align(alignment: Alignment.centerLeft,
              child: Text('Choose Scan Option')),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children:[
                    Flexible(
                      child: RadioListTile(
                        title:  Text('Inventory Scan'),
                        value: option1,
                        groupValue: selectedRadio,
                        onChanged: (value) {
                          setSelectedRadio(value as String);
                        },
                      ),
                    ),
                    Flexible(
                      child: RadioListTile(
                        title: const Text('Bulk Scan'),
                        value: option2,
                        groupValue: selectedRadio,
                        onChanged: (value) {
                          setSelectedRadio(value as String);
                        },
                      ),
                    ),
                  ],
                ),
                Text('Choose Site and Location to start scan'),
                TextFormFildWidgets(title: 'Site', icon: Icons.keyboard_arrow_down_sharp,onPressd: (){
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                              'Site'),
                          content: Text('No option for Depreciation Method'),
                        );
                      });
                },),
                SizedBox(height: 20,),
                TextFormFildWidgets(title: 'Location', icon: Icons.keyboard_arrow_down_sharp,onPressd: (){
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                              'Site'),
                          content: Text('No option for Depreciation Method'),
                        );
                      });
                },),

              ],
            ),
          ),
          Spacer(),

          SizedBox(width:  double.infinity,

            child: TextButton(
              onPressed: (){
                // Get.toNamed(Routes.dashboard);
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,)),
              child: const Text('CHECK OUT',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
