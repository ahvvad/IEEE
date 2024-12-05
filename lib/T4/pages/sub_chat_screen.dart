import 'package:flutter/material.dart';
import '../db/db.dart';
import '../widgits/custom_message_field.dart';
import '../widgits/custom_sub_bar.dart';

class SubChatScreen extends StatelessWidget {
  final Person? person;
  const SubChatScreen({
    super.key,
    this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: subBar(context, person),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: messageField(),
          ),
        ],
      ),
    );
  }
}
