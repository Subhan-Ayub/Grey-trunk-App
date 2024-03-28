import 'package:flutter/material.dart';
class TextFormFildWidgets extends StatelessWidget {
  final String title;
  final IconData icon;
  const TextFormFildWidgets({Key? key,
  required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        decoration:  InputDecoration(
          hintText: title,
          suffixIcon: Icon(icon),
        ),
    );
  }
}
