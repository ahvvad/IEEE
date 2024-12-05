import 'package:flutter/material.dart';
import 'sub_chat_screen.dart';
import '../widgits/custom_transition.dart';

ListTile list({
  required BuildContext context,
  VoidCallback? onTap,
  required String avatar,
  required String title,
  String? subtitle,
}) {
  return ListTile(
    onTap: onTap ??
        () {
          Navigator.push(
            context,
            CustomTransition.createSlideTransition(
              const SubChatScreen(),
            ),
          );
        },
    leading: CircleAvatar(
      radius: 30,
      backgroundColor: Colors.black,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              avatar,
              alignment: Alignment.center,
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    subtitle: Text(
      subtitle ?? 'New messages',
      style: TextStyle(color: Colors.grey[600]),
    ),
    trailing: const Icon(
      Icons.camera_alt_outlined,
      color: Colors.white,
      size: 26,
    ),
  );
}
