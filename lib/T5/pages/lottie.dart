import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatelessWidget {
  const LottiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lottie Animation')),
      body: Center(
        child: Lottie.asset(
          'images/a.json',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
