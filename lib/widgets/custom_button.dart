import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String mainText;
  final String subText;
  final Function onPressed;

  CustomButton({
    required this.icon,
    required this.mainText,
    required this.subText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 48.0,
              color: Color.fromRGBO(
                  5, 10, 48, 1), // Customize the icon color as needed
            ),
            SizedBox(height: 8.0),
            Text(
              mainText,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subText,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
