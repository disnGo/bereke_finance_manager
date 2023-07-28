import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CashbackBlock extends StatelessWidget {
  const CashbackBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Your Cashbacks',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black, // White text color
            fontFamily: 'SourceSansPro', // Source Sans Pro font
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('12000/12500')
                      ],
                    ),
                    CircularPercentIndicator(
                        radius: 30,                        lineWidth: 15.0,

                        percent: 0.96,
                        progressColor: const Color(0xFF0ABB49))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Groceries',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('24586/30000')
                      ],
                    ),
                    CircularPercentIndicator(
                        lineWidth: 15.0,
                        radius: 30,
                        percent: 0.82,
                        progressColor: const Color(0xFF0ABB49))
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
