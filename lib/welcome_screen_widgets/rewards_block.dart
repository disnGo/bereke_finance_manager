import 'package:bereke_finance_manager/rewards_screen.dart';
import 'package:flutter/material.dart';

class RewardsBlock extends StatelessWidget {
  const RewardsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Text(
        //   'Rewards',
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     color: Colors.white, // White text color
        //     fontFamily: 'SourceSansPro', // Source Sans Pro font
        //   ),
        // ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: const [
            RewardCard(text: 'Шопоголик!'),
            RewardCard(text: 'Машина!'),
            RewardCard(text: 'Благое дело'),
            RewardCard(text: 'Техно-Гик')
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
        child: 
        InkWell(
        child:
          Padding(
              padding: EdgeInsets.all(20),
            child:
              text == 'Шопоголик!' ?
                Icon(Icons.favorite, color: Colors.pink,):
              text == 'Машина!' ?
                Icon(Icons.fitness_center, color: Colors.blue,):
              text == 'Благое дело' ?
                Icon(Icons.volunteer_activism, color: Colors.orange,):
            Icon(Icons.qr_code_2, color: Colors.white,)
          ),
        )
      ),
      
    );
  }
}
