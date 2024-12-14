// ignore_for_file:  unused_import

import 'package:flutter/material.dart';
import '../../T2/task_two.dart';
import '../../T3/task_three.dart';
import '../../T4/task_four.dart';
import '../../T5/task_five.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'IEEE',
      debugShowCheckedModeBanner: false,
      home: TaskFive(),
    );
  }
}
