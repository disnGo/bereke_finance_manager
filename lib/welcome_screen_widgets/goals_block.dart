import 'package:flutter/material.dart';

class GoalsBlock extends StatelessWidget {
  const GoalsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Goals', style: TextStyle(fontSize: 20.0)),
        Row(
          children: [
            Expanded(
              child: Card(
                child: Stack(
                  // Use Stack widget to overlay text on progress bar
                  alignment: Alignment.center, // Align the text to the center
                  children: [
                    LinearProgressIndicator(
                      // Use LinearProgressIndicator widget for progress bar
                      value: 0.9, // Replace with actual progress value
                      color: Color(
                          0xFF0ABB49), // Change the color of the progress bar
                      backgroundColor:
                          Colors.grey, // Change the color of the progress bar
                      minHeight: 50.0, // Change the height of the progress bar
                    ),
                    Text('New iPhone'), // Use Text widget for text
                  ],
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Card(
                child: Stack(
                  // Use Stack widget to overlay text on progress bar
                  alignment: Alignment.center, // Align the text to the center
                  children: [
                    LinearProgressIndicator(
                      // Use LinearProgressIndicator widget for progress bar
                      value: 0.1, // Replace with actual progress value
                      color: Color(
                          0xFF0ABB49), // Change the color of the progress bar
                      backgroundColor: Colors.grey,
                      minHeight: 50.0, // Change the height of the progress bar
                    ),
                    Text('Mortgage'), // Use Text widget for text
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
