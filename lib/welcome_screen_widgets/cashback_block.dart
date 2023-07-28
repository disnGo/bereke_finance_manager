import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CashbackBlock extends StatelessWidget {
  const CashbackBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Your Cashbacks',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white, // Black text color
            fontFamily: 'SourceSansPro', // Source Sans Pro font
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                padding: const EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                        Text('12,000/12,500', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 45,
                      lineWidth: 15.0,
                      percent: 0.96,
                      progressColor: const Color(0xFF0ABB49),
                      center: const Text(
                        '96%',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Groceries',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text('24,586/30,000', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 45,
                      lineWidth: 15.0,
                      percent: 0.82,
                      progressColor: const Color(0xFF0ABB49),
                      center: const Text(
                        '82%',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
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
