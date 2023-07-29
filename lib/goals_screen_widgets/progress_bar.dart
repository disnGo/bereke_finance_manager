import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBarBlock extends StatelessWidget {
  const ProgressBarBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        LinearPercentIndicator(
          barRadius: const Radius.circular(16),
          percent: 0.1,
          progressColor: const Color(0xFF0ABB49),
          backgroundColor: Colors.grey[300],
          lineHeight: 50.0,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 110.0),
          child: Text(
            '100000 / 1000000',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}