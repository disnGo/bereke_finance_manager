import 'package:flutter/material.dart';

class FillerBlock extends StatelessWidget {
  const FillerBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
      ),
      color: Colors.grey[800], // Dark gray background color
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white, // White text color
            fontFamily: 'SourceSansPro', // Source Sans Pro font
          ),
        ),
      ),
    );
  }
}
