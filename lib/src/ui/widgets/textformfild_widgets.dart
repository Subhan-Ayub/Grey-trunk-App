import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFildWidgets extends StatelessWidget {
  final String title;
  final IconData? icon;
  Function()? onPressd;
  TextEditingController? txtcontroller;
  TextFormFildWidgets({
    Key? key,
    required this.title,
    this.icon,
    this.onPressd,
    this.txtcontroller
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .7,
      child: TextFormField(
        controller: txtcontroller,
        onTap: onPressd,
        decoration: InputDecoration(
          hintText: title,
          suffixIcon: Icon(icon),
        ),
      ),
    );
  }
}
