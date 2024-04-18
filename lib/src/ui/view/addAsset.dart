import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/addAsset_controller.dart';
import 'package:flutter_application_1/src/ui/widgets/commonBtn.dart';
import 'package:flutter_application_1/src/ui/widgets/container.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
class AddAssets extends StatelessWidget {
final AddAssetsController controller = Get.put(AddAssetsController());
bool showTextField = true;

    @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
        backgroundColor: Colors.white,
        appBar: appbar(),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children:  [
                    TextFormFildWidgets(title: 'Asset Tag ID:*', icon: Icons.qr_code_scanner,
                      txtcontroller: controller.assetTagIdController,
                      onPressd: (){
                      Get.toNamed(Routes.scan);
                    },),
                    SizedBox(height: 20,),
                    TextFormFildWidgets(title: 'Purchased date', icon: Icons.date_range,
                      txtcontroller: controller.purchasedController,
                      onPressd: (){
                        Get.toNamed(Routes.scan);
                      },),
                    SizedBox(height: 20,),
                    TextFormFildWidgets(title: 'Category', icon: Icons.keyboard_arrow_down,
                      txtcontroller: controller.categoryController,
                      onPressd: (){
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
                    TextFormFildWidgets(title: 'Description',
                      txtcontroller: controller.depreciationController,
                    ),
                    SizedBox(height: 20,),
                    TextFormFildWidgets(title: 'Brand',
                      txtcontroller: controller.brandController,
                    ),
                    SizedBox(height: 20,),
                    TextFormFildWidgets(title: 'Model',
                      txtcontroller: controller.modelController,
                    ),
                    SizedBox(height: 20,),
                    TextFormFildWidgets(title: 'Serial No',
                      txtcontroller: controller.serialNoController,
                    ),
                    SizedBox(height: 20,),
                    TextFormFildWidgets(title: 'Cost',
                      txtcontroller: controller.costController,
                    ),
                    SizedBox(height: 20,),
                    TextFormFildWidgets(title: 'Disposed Date', icon: Icons.date_range,
                      txtcontroller: controller.disposedDateController,
                      onPressd: ()async{
                      DateTime? pickedDate = await showDatePicker(context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2050));
                      if(pickedDate != null){
                      }
                    },),
                    SizedBox(height: 20,),
                    TextFormFildWidgets(title: 'Created Date', icon: Icons.date_range,
                      txtcontroller: controller.createdDateController,
                      onPressd: ()async{
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
                    TextFormFildWidgets(title: 'Site', icon: Icons.keyboard_arrow_down_sharp,
                      txtcontroller: controller.siteController,

                      onPressd: (){
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
                    TextFormFildWidgets(title: 'Location', icon: Icons.keyboard_arrow_down_sharp,
                      txtcontroller: controller.locationController,

                      onPressd: (){
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
                      child: Obx(() {
                        return controller.imageFile.value == null
                            ? Center(child: Text('No image selected.'))
                            : Image.file(controller.imageFile.value!);
                      }),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () => controller.pickImage(ImageSource.camera),
                        child: Row(
                          children: [
                            Icon(Icons.camera_alt_outlined, color: Colors.white,),
                            SizedBox(width: 5,),
                            Text('UPLOAD IMAGE', style: TextStyle(color: Colors.white, fontSize: 11),),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(UIDataColors.commonColor)
                        ),
                      ),
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
                      children: [
                        Flexible(
                          child: RadioListTile(
                            title:  Text('Yes'),
                            value: 'Option1',
                            groupValue: controller.selectedRadio.value,
                            onChanged: (value) {
                              controller.setSelectedRadio(value as String);
                              print('Selected Radio Value: ${controller.selectedRadio.value}');
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('No'),
                            value: 'Option2',
                            groupValue: controller.selectedRadio.value,
                            onChanged: (value) {
                              controller.setSelectedRadio(value as String);
                              controller.update();
                              print('Selected Radio Value: ${controller.selectedRadio.value}');
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
                            TextFormFildWidgets(title: 'Total Cost(USD)*',),
                            SizedBox(height: 20,),
                            TextFormFildWidgets(title: 'Asset Life(Month)*',),
                            SizedBox(height: 20,),
                            TextFormFildWidgets(title: 'Salvage Value(USD)*',),
                            SizedBox(height: 20,),
                            TextFormFildWidgets(title: 'Date Acquired', icon: Icons.date_range),
                          ],
                        ),
                      ),
                    ),
      SizedBox(height: 50,)
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment: Alignment.bottomCenter,
                child: CommonBtn(title: 'SAVE',onPressd: (){Get.toNamed(Routes.dashboard);},)
              ),
            ),
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
            'ADD ASSET',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
