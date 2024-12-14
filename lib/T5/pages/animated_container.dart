// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool _isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isLarge = !_isLarge;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _isLarge ? 200 : 100,
                height: _isLarge ? 200 : 100,
                color: _isLarge ? Colors.blue : Colors.red,
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
