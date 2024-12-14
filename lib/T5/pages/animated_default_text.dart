// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnimatedDefaultTextPage extends StatefulWidget {
  const AnimatedDefaultTextPage({super.key});

  @override
  _AnimatedDefaultTextPageState createState() => _AnimatedDefaultTextPageState();
}

class _AnimatedDefaultTextPageState extends State<AnimatedDefaultTextPage> {
  bool _isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Default Text Style')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isLarge = !_isLarge;
            });
          },
          child: AnimatedDefaultTextStyle(
            duration: const Duration(seconds: 1),
            style: TextStyle(
              fontSize: _isLarge ? 40 : 20,
              color: _isLarge ? Colors.blue : Colors.red,
            ),
            child: const Text('Tap to Animate'),
          ),
        ),
      ),
    );
  }
}
