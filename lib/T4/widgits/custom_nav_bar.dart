import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // each container => 30% => (30% * 3 ) - 100% = 90% ==> 10% => for padding :
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = screenWidth * 0.3;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: containerWidth,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: const Text(
              'Primary',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: containerWidth,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[800],
            ),
            child: const Text(
              'General',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: containerWidth,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[800],
            ),
            child: const Text(
              'Requests',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
