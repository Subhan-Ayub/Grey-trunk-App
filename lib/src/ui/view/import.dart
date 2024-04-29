import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/widgets/commonBtn.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';

class Import extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            'Import/Export',
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(84, 75, 21, 140)),
          ).marginSymmetric(vertical: 80),
          CommonBtn(title: 'Import Data').marginOnly(bottom: 20),
          CommonBtn(title: 'Export Data')
        ],
      )),
      appBar: appbar(),
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
            'EmergTech',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
