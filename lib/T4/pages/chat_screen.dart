import 'package:flutter/material.dart';
import '../../T4/db/db.dart';
import '../widgits/custom_bar.dart';
import '../widgits/custom_nav_bar.dart';
import 'details.dart';
import '../widgits/custom_search_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: bar(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CustomSearchBar(),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      // filter method
                    },
                    child: const Text(
                      'Filter',
                      style: TextStyle(
                        color: Color(0xFF1387DA),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: NavBar(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    final person = people[index];
                    return Column(
                      children: [
                        list(
                          avatar: person.image,
                          title: person.name,
                          subtitle: person.description,
                          context: context,
                        ),
                        const SizedBox(height: 12),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
