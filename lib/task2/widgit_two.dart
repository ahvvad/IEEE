import 'package:flutter/material.dart';

ListTile list({
  required int avatar,
  required String title,
  String subtitle = 'item description',
}) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.teal,
      child: Text(
        avatar.toString(),
        style: const TextStyle(color: Colors.white),
      ),
    ),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: const Icon(Icons.more_vert),
  );
}
