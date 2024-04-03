// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/addDocController.dart';
import 'package:flutter_application_1/src/controllers/addMaintenanceController.dart';
import 'package:flutter_application_1/src/ui/widgets/commonBtn.dart';
import 'package:flutter_application_1/src/ui/widgets/textformfild_widgets.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';

class AddMaintenance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AddMaintenanceController _ = Get.find<AddMaintenanceController>();
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: Get.height,
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  'ADD NEW MAINTENANCE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close,
                    color: Color.fromARGB(148, 0, 0, 0),
                  ).marginOnly(right: 15),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormFildWidgets(
                  title: 'Title',
                ).marginOnly(
                  top: 20,
                ),
                TextFormFildWidgets(
                  title: 'Cost',
                ).marginOnly(
                  top: 20,
                ),
                TextFormFildWidgets(
                  title: 'Maintenance By',
                ).marginOnly(
                  top: 20,
                ),
                Text(
                  'Repeating',
                  style: TextStyle(
                      fontSize: 17,
                      color: const Color.fromARGB(255, 73, 73, 73)),
                ).marginOnly(top: 30),
                RadioButtonGroup(options: [
                  'Yes',
                  'No',
                ]),
                TextFormFildWidgets(
                  title: 'Due Date*',
                  icon: Icons.calendar_month,
                ),
                TextFormFildWidgets(
                  title: 'Complete Date',
                  icon: Icons.calendar_month,
                ).marginOnly(
                  top: 20,
                ),
                TextField(
                  maxLines: 5,
                  
                  decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10,left: 10),  
                    hintText: 'Notes',
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(148, 158, 158, 158)),
                    border: OutlineInputBorder(
                      // For a solid border
                      borderRadius: BorderRadius.circular(
                          6.0), // Customize corner radius
                      borderSide: BorderSide(
                        // Customize border style and color
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                ).marginOnly(top: 20),
              ],
            ).marginSymmetric(horizontal: 25),
            Spacer(),

            CommonBtn(title: 'SAVE').marginOnly(bottom: 25),
          ],
        ),
      )),
    );
  }
}

class RadioButtonGroup extends StatelessWidget {
  final List<String> options;

  final AddMaintenanceController _ = Get.find<AddMaintenanceController>();

  RadioButtonGroup({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: options
          .map((option) => SizedBox(
                width: Get.width / 2.5,
                child: _buildRadioListTile(option),
              ))
          .toList(),
    );
  }

  Widget _buildRadioListTile(String option) {
    return Obx(() => RadioListTile<String>(
          value: option,
          groupValue: _.selectedValue.value,
          onChanged: (value) => _.onRadioSelected(value!),
          title: Text(option),
        ));
  }
}
