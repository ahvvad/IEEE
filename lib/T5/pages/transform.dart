// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TransformPage extends StatefulWidget {
  const TransformPage({super.key});

  @override
  _TransformPageState createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  double _angle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transform Animation')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _angle += 0.2;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: _angle,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(
                Icons.touch_app_outlined,
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
