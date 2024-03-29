import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/addAsset_controller.dart';
import 'package:flutter_application_1/src/ui/widgets/container.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:get/get.dart';
class AddAssets extends StatefulWidget {
  const AddAssets({super.key});

  @override
  State<AddAssets> createState() => _AddAssetsState();
}

class _AddAssetsState extends State<AddAssets> {
  AddAssetsController _ = Get.find<AddAssetsController>();
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ADD ASSET'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: const [
              TextFormFildWidgets(title: 'Asset Tag ID:*', icon: Icons.qr_code_scanner),
              SizedBox(height: 20,),
              TextFormFildWidgets(title: 'Category', icon: Icons.keyboard_arrow_down),
              SizedBox(height: 20,),
              TextFormFildWidgets(title: 'Description', icon: Icons.description),
              SizedBox(height: 20,),
              TextFormFildWidgets(title: 'Assigned To', icon: Icons.assignment),
              SizedBox(height: 20,),
              TextFormFildWidgets(title: 'Last Scanned Date', icon: Icons.date_range),
              SizedBox(height: 20,),
              TextFormFildWidgets(title: 'Due Date', icon: Icons.date_range),
              SizedBox(
                height: 20,
              ),

              ContWidgets(text: 'ASSETS LOCATION'),
              SizedBox(height: 20,),
              TextFormFildWidgets(title: 'Site', icon: Icons.keyboard_arrow_down_sharp),
              SizedBox(height: 20,),
              TextFormFildWidgets(title: 'Location', icon: Icons.keyboard_arrow_down_sharp),
              SizedBox(height: 20,),
              ContWidgets(text: 'ASSETS IMAGE'),
              SizedBox(height: 20,),
              ContWidgets(text: 'DEPRECIATION'),
              SizedBox(height: 20,),
              Align(alignment: Alignment.centerLeft,
                  child: Text("Depreciation",style: TextStyle(fontSize: 16,),)),
              SizedBox(
                height: 10,
              ),
              // ListTile(
              //   title: const Text('Option 1'),
              //   leading: Radio<int>(
              //     value: 1,
              //     groupValue: selectedOption?,
              //     activeColor: Colors.red, // Change the active radio button color here
              //     fillColor: MaterialStateProperty.all(Colors.red), // Change the fill color when selected
              //     splashRadius: 20, // Change the splash radius when clicked
              //     onChanged: (int? value) {
              //       setState(() {
              //         selectedOption = value!;
              //       });
              //     },
              //   ),
              // ),
              // ListTile(
              //   title: const Text('Option 2'),
              //   leading: Radio<int>(
              //     value: 2,
              //     groupValue: selectedOption,
              //     activeColor: Colors.blue, // Change the active radio button color here
              //     fillColor: MaterialStateProperty.all(Colors.blue), // Change the fill color when selected
              //     splashRadius: 25, // Change the splash radius when clicked
              //     onChanged: (value) {
              //       setState(() {
              //         selectedOption = value!;
              //       });
              //     },
              //   ),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
