import 'package:flutter/material.dart';
import '../../constants.dart';

class MainBotton extends StatelessWidget {
  const MainBotton({
    super.key,
    required this.text,
    required this.onTap,
    required this.width,
  });
  final String text;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 55,
          decoration: BoxDecoration(
            color: kMainColor,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}

class LinedBotton extends StatelessWidget {
  const LinedBotton({
    super.key,
    required this.text,
    required this.onTap,
    required this.width,
  });
  final String text;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 55,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: kMainColor,
                width: 1.5,
              )),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                color: kThirdColor,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
