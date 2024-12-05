import 'package:flutter/material.dart';
import '/widgits/app_bar.dart';
import 'widgit_two.dart';

class TaskTwo extends StatelessWidget {
  const TaskTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(barTitle: 'ListTile'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 21,
                  itemBuilder: (context, index) {
                    return list(
                      avatar: index,
                      title: 'Item $index',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
