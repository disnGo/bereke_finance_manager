import 'package:flutter/material.dart';

class MainBlock extends StatelessWidget {
  const MainBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
      ),
      color: Colors.grey[800], // Dark gray background color
      child: ListTile(
        leading: const CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('/assets/user_avatar.png'),
        ),
        title: const Text(
          'Balance: \$100,000',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // White text color
            fontFamily: 'SourceSansPro', // Source Sans Pro font
          ),
        ),
        subtitle: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Income: \$900,000',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.green, // Emerald green text color
                fontFamily: 'SourceSansPro', // Source Sans Pro font
              ),
            ),
            Text(
              'Expenses: \$800,000',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.red, // Red text color
                fontFamily: 'SourceSansPro', // Source Sans Pro font
              ),
            ),
          ],
        ),
        onTap: () {
          // Handle the tap on this block
        },
      ),
    );
  }
}
