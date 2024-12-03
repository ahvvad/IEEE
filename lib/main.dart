// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'T3/task_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IEEE',
      debugShowCheckedModeBanner: false,
      home: const TaskThree(),
    );
  }
}
