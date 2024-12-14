// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnimatedCrossfadePage extends StatefulWidget {
  const AnimatedCrossfadePage({super.key});

  @override
  _AnimatedCrossfadePageState createState() => _AnimatedCrossfadePageState();
}

class _AnimatedCrossfadePageState extends State<AnimatedCrossfadePage> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Crossfade')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _first = !_first;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild:
                    Container(color: Colors.blue, width: 100, height: 100),
                secondChild:
                    Container(color: Colors.red, width: 200, height: 200),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
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
