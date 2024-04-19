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
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        appBar: appbar(),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    TextFormFildWidgets(
                      title: 'Asset Tag ID:*',
                      icon: Icons.qr_code_scanner,
                      txtcontroller: controller.assetTagIdController,
                  
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      read: true,
                      title: 'Purchased date',
                      icon: Icons.date_range,
                      txtcontroller: controller.purchasedController,
                      onPressd: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050));
                        if (pickedDate != null) {
                          DateTime dateTime = pickedDate;
                          var formattedDate =
                              "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

                          controller.purchasedController.text =
                              formattedDate.toString();
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      read: true,
                      title: 'Category',
                      icon: Icons.keyboard_arrow_down,
                      txtcontroller: controller.categoryController,
                      onPressd: (){
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.grey[300]!, Colors.grey[600]!],
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                height: 300.0,
                                child: ListWheelScrollView(
                                  itemExtent: 50.0,
                                  physics: FixedExtentScrollPhysics(),
                                  overAndUnderCenterOpacity: 0.5,
                                  children: List.generate(
                                    5,
                                        (index) => Container(
                                      color: Colors.white,
                                      child: ListTile(
                                        selectedTileColor: Colors.blue,
                                        title: Center(
                                          child: Text(
                                            _getCategoryName(index),
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );

                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      title: 'Description',
                      txtcontroller: controller.descriptionController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      title: 'Brand',
                      txtcontroller: controller.brandController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      title: 'Model',
                      txtcontroller: controller.modelController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      title: 'Serial No',
                      txtcontroller: controller.serialNoController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      title: 'Cost',
                      txtcontroller: controller.costController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      title: 'Disposed Date',
                      icon: Icons.date_range,
                      txtcontroller: controller.disposedDateController,
                      read: true,
                      onPressd: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050));
                        if (pickedDate != null) {
                          DateTime dateTime = pickedDate;
                          var formattedDate =
                              "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

                          controller.disposedDateController.text =
                              formattedDate.toString();
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      title: 'Created Date',
                      read: true,
                      icon: Icons.date_range,
                      txtcontroller: controller.createdDateController,
                      onPressd: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050));
                        if (pickedDate != null) {
                          DateTime dateTime = pickedDate;
                          var formattedDate =
                              "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

                          controller.createdDateController.text =
                              formattedDate.toString();
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ContWidgets(text: 'ASSETS LOCATION'),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      title: 'Site',
                      read: true,
                      icon: Icons.keyboard_arrow_down_sharp,
                      txtcontroller: controller.siteController,
                      onPressd: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Site'),
                                content: Text('No option for Site'),
                              );
                            });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFildWidgets(
                      read: true,
                      title: 'Location',
                      icon: Icons.keyboard_arrow_down_sharp,
                      txtcontroller: controller.locationController,
                      onPressd: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Location'),
                                content: Text('No option for Location'),
                              );
                            });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ContWidgets(
                      text: 'ASSETS IMAGE',
                    ),
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
                        onPressed: () =>
                            controller.pickImage(ImageSource.camera),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                UIDataColors.commonColor)),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'UPLOAD IMAGE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ContWidgets(text: 'DEPRECIATION'),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Depreciation",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RadioListTile(
                            title: Text('Yes'),
                            value: 'Option1',
                            groupValue: controller.selectedRadio.value,
                            onChanged: (value) {
                              controller.setSelectedRadio(value as String);
                              print(
                                  'Selected Radio Value: ${controller.selectedRadio.value}');
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
                              print(
                                  'Selected Radio Value: ${controller.selectedRadio.value}');
                            },
                          ),
                        ),
                      ],
                    ),
                    if(controller.selectedRadio.value=="Option1")
                    Visibility(
                      visible: showTextField,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextFormFildWidgets(
                              read: true,
                              title: 'Depreciation Method',
                              icon: Icons.keyboard_arrow_down_sharp,
                              onPressd: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title:
                                            const Text('Depreciation Method'),
                                        content: Text(
                                            'No option for Depreciation Method'),
                                      );
                                    });
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormFildWidgets(
                              txtcontroller: controller.totalCostController,
                              title: 'Total Cost(USD)*',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormFildWidgets(
                              txtcontroller: controller.assetsLifeController,
                              title: 'Asset Life(Month)*',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormFildWidgets(
                              txtcontroller: controller.salvageController,
                              title: 'Salvage Value(USD)*',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormFildWidgets(
                              txtcontroller: controller.dateAcquiredController,
                                onPressd: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2050));
                                  if (pickedDate != null) {
                                    DateTime dateTime = pickedDate;
                                    var formattedDate =
                                        "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

                                    controller.dateAcquiredController.text =
                                        formattedDate.toString();
                                  }
                                },
                                title: 'Date Acquired',
                                icon: Icons.date_range),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CommonBtn(
                    title: 'SAVE',
                    onPressd: () {
                      controller.save();
                      // Get.toNamed(Routes.dashboard);
                    },
                  )),
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

String _getCategoryName(int index) {
  switch (index) {
    case 0:
      return 'Tools';
    case 1:
      return 'Vehicles';
    case 2:
      return 'Demo Equipment';
    case 3:
      return 'Machinery';
    case 4:
      return 'Supplies';
    case 5:
      return 'Computer';
    case 6:
      return 'Furniture and Fixtures';
    case 7:
      return 'AV equipment';
    default:
      return 'Unknown';
  }
}