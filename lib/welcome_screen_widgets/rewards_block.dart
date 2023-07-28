import 'package:flutter/material.dart';

class RewardsBlock extends StatelessWidget {
  const RewardsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Rewards',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white, // White text color
            fontFamily: 'SourceSansPro', // Source Sans Pro font
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: const [
            RewardCard(text: 'Shopaholic!'),
            RewardCard(text: 'Sportsman'),
            RewardCard(text: 'Charitable Heart'),
            RewardCard(text: 'Techno-Geek')
          ],
        ),
        const SizedBox(height: 5.0),
      ],
    );
  }
}

class RewardCard extends StatelessWidget {
  final String text;

  const RewardCard({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      color: Colors.grey[800],
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: 'SourceSansPro', // Source Sans Pro font
          ),
        ),
      ),
    );
  }
}
