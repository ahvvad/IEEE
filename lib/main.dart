// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import '/task1/task_one.dart';
import '/task2/task_two.dart';
import '/task3/task_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const TaskThree(),
    );
  }
}
