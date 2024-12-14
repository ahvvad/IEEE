import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextPage extends StatelessWidget {
  const AnimatedTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Text Kit')),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Hello, Flutter!'),
              TypewriterAnimatedText('Enjoy Animations!'),
              TypewriterAnimatedText('With Animated Text Kit!'),
            ],
            repeatForever: true,
          ),
        ),
      ),
    );
  }
}
