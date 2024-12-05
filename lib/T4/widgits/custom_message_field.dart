import 'dart:math';

import 'package:flutter/material.dart';

import '../../constants.dart';

Row messageField() {
  return Row(
    children: [
      Expanded(
        child: TextFormField(
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.blue,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[800],
            suffixIcon: Transform.rotate(
              angle: pi / -3.9,
              child: GestureDetector(
                  onTap: () {
                    // Link icon method
                  },
                  child: const Icon(
                    Icons.link_outlined,
                    color: Colors.white,
                  )),
            ),
            hintText: 'Message..',
            hintStyle: TextStyle(color: Colors.grey.shade500),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: kBackgroundField, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: kBackgroundField, width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: kBackgroundField, width: 0),
            ),
          ),
        ),
      ),
      const SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(55),
        ),
        child: IconButton(
          icon: const Icon(Icons.send, color: Colors.white),
          onPressed: () {
            // Send method
          },
        ),
      ),
    ],
  );
}
