import 'package:flutter/material.dart';

import '../../constants.dart';

class MainField extends StatelessWidget {
  const MainField({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: kSecondColor,
        prefixIcon: icon,
        hintText: title,
        hintStyle: TextStyle(color: kTextColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: kFormColor, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: kFormColor, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: kMainColor, width: 1),
        ),
      ),
    );
  }
}
