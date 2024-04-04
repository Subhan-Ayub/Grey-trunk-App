import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:get/get.dart';
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
      backgroundColor: Colors.grey.shade100,
      appBar: appbar(),
      body: Column(
        children: [
          Align(alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Choose Scan Option',style: TextStyle(fontSize: 16),),
              )),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children:[
                      Flexible(
                        child: RadioListTile(
                          title: Row(
                            children: [
                              Image.asset(
                                'assets/images/logos/rfid_reader.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 20), // Add spacing between image and text
                              Text('Scan with RFID Reader'),
                            ],
                          ),
                          value: option1,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setSelectedRadio(value as String);
                          },
                        ),
                      ),
                    ],
                  ),
                  Center(child: Text('No Device is connected',style: TextStyle(fontSize: 14),)),
                  Divider(
                    thickness: 0,
                    color: Colors.grey.shade500,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.blue,)),
                      Text('CONNECT DEVICE'),
                    ],
                  )
                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              color: Colors.white,
              child: Row(
                    children:[
                      Flexible(
                        child: RadioListTile(
                          title: Row(
                            children: [
                              Image.asset(
                                'assets/images/logos/barcode.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width:20), // Add spacing between image and text
                              Text('Scan with camera'),
                            ],
                          ),
                          value: option2,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setSelectedRadio(value as String);
                          },
                        ),
                      ),
                    ],
                  ),
            ),
          ),
          SizedBox(height: 12,),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(height: 10,),
                  Text('Choose Site and Location to start scan',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10,),
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
          ),
          Spacer(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(width:  double.infinity,

              child: TextButton(
                onPressed: (){
                  Get.toNamed(Routes.dashboard);
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
          ),
        ],
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
            'SCAN',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
