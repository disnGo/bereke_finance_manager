import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GoalsBlock extends StatelessWidget {
  const GoalsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Goals',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: 'SourceSansPro',
          ),
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  // Handle the tap on Goal 1
                },
                borderRadius: BorderRadius.circular(16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.grey[300],
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      LinearPercentIndicator(
                        barRadius: const Radius.circular(16),
                        percent: 0.9,
                        progressColor: const Color(0xFF0ABB49),
                        backgroundColor: Colors.grey[300],
                        lineHeight: 50.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'New iPhone',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: InkWell(
                onTap: () {
                  // Handle the tap on Goal 2
                },
                borderRadius: BorderRadius.circular(16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.grey[300],
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      LinearPercentIndicator(
                        barRadius: const Radius.circular(16),
                        percent: 0.1,
                        progressColor: const Color(0xFF0ABB49),
                        backgroundColor: Colors.grey[300],
                        lineHeight: 50.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Mortgage',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
