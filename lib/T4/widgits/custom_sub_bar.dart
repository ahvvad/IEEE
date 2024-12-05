import 'package:flutter/material.dart';
import '../db/db.dart';

AppBar subBar(BuildContext context, Person? person) {
  return AppBar(
    backgroundColor: Colors.black,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: GestureDetector(
      child: const Text(
        'Profile',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      onTap: () {
        // profile method
      },
    ),
    actions: [
      Row(
        children: [
          GestureDetector(
            child: const Icon(
              Icons.call_outlined,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 15),
          GestureDetector(
            child: const Icon(
              Icons.video_camera_back_outlined,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 15),
          GestureDetector(
            child: const Icon(
              Icons.flag_outlined,
              color: Colors.white,
            ),
            onTap: () {},
          ),
        ],
      ),
    ],
  );
}
