import 'package:flutter/material.dart';

class RewardsBlock extends StatelessWidget {
  const RewardsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Rewards',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black, // White text color
            fontFamily: 'SourceSansPro', // Source Sans Pro font
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.0, // 1.0 means a 1:1 aspect ratio (square)
                child: Card(
                  child: Center(
                    child: Text(
                      'Reward 1: \nCompleted Goal 1!',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.0, // 1.0 means a 1:1 aspect ratio (square)
                child: Card(
                  child: Center(
                    child: Text(
                      'Reward 2: \nCompleted Goal 2!',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.0, // 1.0 means a 1:1 aspect ratio (square)
                child: Card(
                  child: Center(
                    child: Text(
                      'Reward 3: \nCompleted Goal 3!',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.0, // 1.0 means a 1:1 aspect ratio (square)
                child: Card(
                  child: Center(
                    child: Text(
                      'Reward 4: \nCompleted Goal 4!',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
