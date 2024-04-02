import 'package:flutter/material.dart';

class TextFormFildWidgets extends StatelessWidget {
  final String title;
  final IconData? icon;
  Function()? onPressd;
  TextFormFildWidgets({
    Key? key,
    required this.title,
    this.icon,
    this.onPressd,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .7,
      child: TextFormField(
        onTap: onPressd,
        decoration: InputDecoration(
          hintText: title,
          suffixIcon: Icon(icon),
        ),
      ),
    );
  }
}
