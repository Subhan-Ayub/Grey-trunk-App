import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/container.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {

  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      _imageFile = pickedFile != null ? File(pickedFile.path) : null;
    });
  }
  void _changeImage() {
  }

  void _deleteImage() {
    setState(() {
      _imageFile = null;
    });
  }

  static const String option1 = 'Option 1';
  static const String option2 = 'Option 2';

  String selectedRadio = option2;

  bool showTextField = false;

  void setSelectedRadio(String value) {
    setState(() {
      selectedRadio = value;
      if (value == option1) {
        showTextField = true;
      } else {
        showTextField = false;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children:  [
                  TextFormFildWidgets(title: 'Asset Tag ID:*', icon: Icons.qr_code_scanner,onPressd: (){
                    Get.toNamed(Routes.scan);
                  },),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Category', icon: Icons.keyboard_arrow_down,onPressd: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                                'Category'),
                            content: Text('No option for Category'),
                          );
                        });
                  },),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Description', icon: Icons.description,),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Brand', icon: Icons.description,),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Model', icon: Icons.description,),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Serial number', icon: Icons.description,),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Cost', icon: Icons.description,),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Assigned To', icon: Icons.assignment),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Last Scanned Date', icon: Icons.date_range,onPressd: ()async{
                    DateTime? pickedDate = await showDatePicker(context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050));
                    if(pickedDate != null){
                    }
                  },),
                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Due Date', icon: Icons.date_range,onPressd: ()async{
                    DateTime? pickedDate = await showDatePicker(context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050));
                    if(pickedDate != null){
                    }
                  },),
                  SizedBox(
                    height: 20,
                  ),

                  ContWidgets(text: 'ASSETS LOCATION'),

                  SizedBox(height: 20,),
                  TextFormFildWidgets(title: 'Site', icon: Icons.keyboard_arrow_down_sharp,onPressd: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                                'Site'),
                            content: Text('No option for Site'),
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
                                'Location'),
                            content: Text('No option for Location'),
                          );
                        });
                  },),
                  SizedBox(height: 20,),
                  ContWidgets(text: 'ASSETS IMAGE',),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.grey.shade100,
                    height: 270,
                    width: 400,
                    child: _imageFile == null
                        ? Center(child: Text('No image selected.'))
                        : Image.file(_imageFile!),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => _pickImage(ImageSource.camera),
                    child: Text('Take Picture',style: TextStyle(color: UIDataColors.commonColor),),
                  ),
                  SizedBox(height: 20,),
                  ContWidgets(text: 'DEPRECIATION'),
                  SizedBox(height: 20,),
                  Align(alignment: Alignment.centerLeft,
                      child: Text("Depreciation",style: TextStyle(fontSize: 16,),)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: RadioListTile(
                          title:  Text('Yes'),
                          value: option1,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setSelectedRadio(value as String);
                          },
                        ),
                      ),
                      Flexible(
                        child: RadioListTile(
                          title: const Text('No'),
                          value: option2,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setSelectedRadio(value as String);
                          },
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: showTextField,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormFildWidgets(
                            title: 'Depreciation Method',
                            icon: Icons.keyboard_arrow_down_sharp,onPressd: (){
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text(
                                        'Depreciation Method'),
                                    content: Text('No option for Depreciation Method'),
                                  );
                                });
                          },
                          ),
                          SizedBox(height: 20,),
                          TextFormFildWidgets(title: 'Total Cost(USD)*', icon: Icons.monetization_on_outlined),
                          SizedBox(height: 20,),
                          TextFormFildWidgets(title: 'Asset Life(Month)*', icon: Icons.monetization_on_outlined),
                          SizedBox(height: 20,),
                          TextFormFildWidgets(title: 'Salvage Value(USD)*', icon: Icons.monetization_on_outlined),
                          SizedBox(height: 20,),
                          TextFormFildWidgets(title: 'Date Acquired', icon: Icons.date_range),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){Get.toNamed(Routes.dashboard);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: UIDataColors.commonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,)),
                  child: const Text('UPDATE',
                      style: TextStyle(color: Colors.white)),
                ),
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
            'ADD ASSET',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
