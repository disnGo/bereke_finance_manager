import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonutChart extends StatelessWidget {
  final double size;
  final double expenses;
  final double income;

  const DonutChart({super.key, 
    required this.size,
    required this.expenses,
    required this.income,
  });

  @override
  Widget build(BuildContext context) {
    final double total = expenses + income;
    final double incomePercentage = income / total;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: size - 20,
              height: size - 20,
              child: SvgPicture.asset(
                'assets/donut_chart_background.svg', // Replace with your SVG file for the chart background
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: size - 20,
              height: size - 20,
              child: SvgPicture.asset(
                'assets/donut_chart_fill.svg', // Replace with your SVG file for the chart fill
                color: Colors.green, // Change the color of the fill
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: size * 0.5,
              height: size * 0.5,
              child: SvgPicture.asset(
                'assets/donut_chart_center.svg', // Replace with your SVG file for the center of the chart
              ),
            ),
          ),
          Center(
            child: Text(
              '${(incomePercentage * 100).toStringAsFixed(0)}%',
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
