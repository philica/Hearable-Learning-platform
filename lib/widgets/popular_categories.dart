import 'package:flutter/material.dart';
import './custom_button.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PopularCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Container(
          width: 330,
          // color: Colors.green,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: CustomButton(
            icon: Icons.camera,
            mainText: 'Button 4',
            subText: 'Subtext for Button 4',
            onPressed: () {
              // Handle button 4 press
              print('Button 4 clicked');
            },
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 330,
          // color: Colors.green,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: CustomButton(
            icon: Icons.camera,
            mainText: 'Button 4',
            subText: 'Subtext for Button 4',
            onPressed: () {
              // Handle button 4 press
              print('Button 4 clicked');
            },
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 330,
          // color: Colors.green,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: CustomButton(
            icon: Icons.camera,
            mainText: 'Button 4',
            subText: 'Subtext for Button 4',
            onPressed: () {
              // Handle button 4 press
              print('Button 4 clicked');
            },
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 330,
          // color: Colors.green,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: CustomButton(
            icon: Icons.camera,
            mainText: 'Button 4',
            subText: 'Subtext for Button 4',
            onPressed: () {
              // Handle button 4 press
              print('Button 4 clicked');
            },
          ),
        ),
      ],
    );
  }
}
