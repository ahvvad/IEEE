import 'package:flutter/material.dart';

AppBar appBar({required String barTitle}) {
  return AppBar(
    backgroundColor: Colors.teal,
    centerTitle: true,
    title: Text(
      barTitle,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}
