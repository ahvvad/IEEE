import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 35,
        child: SearchBar(
          leading: const Icon(Icons.search, color: Colors.grey),
          hintText: 'Search',
          hintStyle: const WidgetStatePropertyAll(
            TextStyle(
              color: Colors.grey,
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(
            Colors.grey[800],
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
