import 'package:flutter/material.dart';
import 'constants.dart';
import 'pages/login.dart';
class TaskThree extends StatelessWidget {
  const TaskThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackground,
      body: Login(),
    );
  }
}
