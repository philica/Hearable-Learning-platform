import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green, // Customize the color as needed
      padding: EdgeInsets.symmetric(vertical: 20), // Add vertical padding
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20, // Add spacing between the title and category buttons
          ),
          // Add your category buttons or list here
          // Example:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle category button press
                },
                child: Text('Category 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle category button press
                },
                child: Text('Category 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle category button press
                },
                child: Text('Category 3'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
