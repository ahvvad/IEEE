// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ieee/task1/task_one.dart';

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
      home: const Taskone(),
    );
  }
}
