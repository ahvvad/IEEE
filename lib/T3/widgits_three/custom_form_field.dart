// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../constants.dart';

class mainField extends StatelessWidget {
  const mainField({
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
        fillColor: Colors.purple.shade50,
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