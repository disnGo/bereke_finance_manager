import 'package:flutter/material.dart';

class InOutComeButtonBlock extends StatelessWidget {
  const InOutComeButtonBlock({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: const [
            RewardCard(text: true),
            RewardCard(text: false)
          ],
        ),
        const SizedBox(height: 5.0),
      ],
    );
  }
}

class RewardCard extends StatelessWidget {
  final bool text;

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
          InkWell(onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) =>  RewardsScreen()),
            // );
          },
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column (
                children: [
                    text ? const Text(
                      'Пополнение',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ):
                        const Text(
                          'Снятие',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                  text ? const Icon(
                    Icons.arrow_circle_up,
                    color: Colors.green,size: 50,):
                  const Icon(
                    Icons.arrow_circle_down,
                    color: Colors.red,size: 50,)
                ],
              ),
            ),
          )
      ),

    );
  }
}