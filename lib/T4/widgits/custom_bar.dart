import 'package:flutter/material.dart';

AppBar bar(BuildContext context) {
  return AppBar(
    elevation: 0,
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
    title: Row(
      children: [
        const Text(
          'ahvvad_',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
          ),
        )
      ],
    ),
    actions: [
      Row(
        children: [
          GestureDetector(
            child: const Icon(
              Icons.view_headline_rounded,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 15),
          GestureDetector(
            child: const Icon(
              Icons.insights_sharp,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 15),
          GestureDetector(
            child: const Icon(
              Icons.edit_calendar_outlined,
              color: Colors.white,
            ),
            onTap: () {},
          ),
        ],
      ),
    ],
  );
}