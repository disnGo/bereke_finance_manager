import 'package:bereke_finance_manager/goals_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GoalsBlock extends StatelessWidget {
  const GoalsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoalsScreen()),
                  );
                },
                borderRadius: BorderRadius.circular(16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(0.0), // Add padding to the Card
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        LinearPercentIndicator(
                          padding: EdgeInsets.zero, // Removed padding to fill the card
                          alignment: MainAxisAlignment.center,
                          lineHeight: 80.0, // Increased the height to fill the card
                          percent: 0.9,
                          progressColor: const Color(0xFF0ABB49),
                          backgroundColor: Colors.transparent, // Changed to transparent
                          barRadius: const Radius.circular(16), // Rounded corners with barRadius
                        ),
                        const Text(
                          'На новый телефон',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoalsScreen()),
                  );
                },
                borderRadius: BorderRadius.circular(16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(0.0), // Add padding to the Card
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        LinearPercentIndicator(
                          padding: EdgeInsets.zero, // Removed padding to fill the card
                          alignment: MainAxisAlignment.center,
                          lineHeight: 80.0, // Increased the height to fill the card
                          percent: 0.1,
                          progressColor: const Color(0xFF0ABB49),
                          backgroundColor: Colors.transparent, // Changed to transparent
                          barRadius: const Radius.circular(16), // Rounded corners with barRadius
                        ),
                        const Text(
                          'Дом',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
