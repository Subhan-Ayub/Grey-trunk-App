import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/utils/uidata/appImages.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
class ContainerWidgets extends StatelessWidget {
  final String title;
  final String text;
  // final String color;

  const ContainerWidgets({Key? key,
    required this.title,
    required this.text,
    // required this.color,

  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3,
      color: UIDataColors.commonColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImage.logo,
            height: 100,
            width: 100,),
          Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
          Text(title,style: TextStyle(fontSize: 16,color: Colors.white),)
        ],
      ),
    );
  }
}
