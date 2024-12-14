import 'package:flutter/material.dart';

import '../constants.dart';
import 'pages/animated_container.dart';
import 'pages/animated_crossfade.dart';
import 'pages/animated_default_text.dart';
import 'pages/animated_icon.dart';
import 'pages/animated_opacity.dart';
import 'pages/animated_text.dart';
import 'pages/circular_progress.dart';
import 'pages/lottie.dart';
import 'pages/transform.dart';

class TaskFive extends StatelessWidget {
  const TaskFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundField,
      appBar: AppBar(
        backgroundColor: kBackgroundField,
        title: const Text(
          'Flutter Animations',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildButton(
              context,
              'Circular Progress Indicator',
              const CircularProgress(),
            ),
            const SizedBox(height: 20),
            buildButton(
              context,
              'Animated Container',
              const AnimatedContainerPage(),
            ),
            const SizedBox(height: 20),
            buildButton(
              context,
              'Animated Default Text Style',
              const AnimatedDefaultTextPage(),
            ),
            const SizedBox(height: 20),
            buildButton(
              context,
              'Animated Opacity',
              const AnimatedOpacityPage(),
            ),
            const SizedBox(height: 20),
            buildButton(
              context,
              'Animated Crossfade',
              const AnimatedCrossfadePage(),
            ),
            const SizedBox(height: 20),
            buildButton(
              context,
              'Animated Icon',
              const AnimatedIconPage(),
            ),
            const SizedBox(height: 20),
            buildButton(
              context,
              'Transform Animation',
              const TransformPage(),
            ),
            const SizedBox(height: 20),
            buildButton(
              context,
              'Lottie Animation',
              const LottiePage(),
            ),
            const SizedBox(height: 20),
            buildButton(
              context,
              'Animated Text Kit',
              const AnimatedTextPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String title, Widget page) {
    return ElevatedButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
      child: Text(title),
    );
  }
}
