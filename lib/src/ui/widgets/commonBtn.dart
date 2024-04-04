import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';

class CommonBtn extends StatelessWidget {
  final String title;
  CommonBtn({required this.title,});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width - 40,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: UIDataColors.commonColor,
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ));
  }
}
