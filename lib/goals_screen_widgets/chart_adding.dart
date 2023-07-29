import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:math';

final List<double> weeklySpending = [
  Random().nextDouble() * 100,
  Random().nextDouble() * 100,
  Random().nextDouble() * 100,
  Random().nextDouble() * 100,
  Random().nextDouble() * 100,
  Random().nextDouble() * 100,
  Random().nextDouble() * 100,
];

final List<double> weeklyIncome = [
  Random().nextDouble() * 50,
  Random().nextDouble() * 50,
  Random().nextDouble() * 50,
  Random().nextDouble() * 50,
  Random().nextDouble() * 50,
  Random().nextDouble() * 50,
  Random().nextDouble() * 50,
];

class ChartData {
  final String day;
  final double amountSpent;
  final double income;

  ChartData(this.day, this.amountSpent, this.income);

  charts.Color getSpendingColor() {
    return charts.ColorUtil.fromDartColor(amountSpent > 0 ? Colors.red : Colors.green);
  }
}

class CustomBarChart extends StatelessWidget {

  const CustomBarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartData, String>> series = [
      charts.Series(
        id: "Расходы",
        data: [
          ChartData('Вс', weeklySpending[0], weeklyIncome[0]),
          ChartData('Пн', weeklySpending[1], weeklyIncome[1]),
          ChartData('Вт', weeklySpending[2], weeklyIncome[2]),
          ChartData('Ср', weeklySpending[3], weeklyIncome[3]),
          ChartData('Чт', weeklySpending[4], weeklyIncome[4]),
          ChartData('Пт', weeklySpending[5], weeklyIncome[5]),
          ChartData('Сб', weeklySpending[6], weeklyIncome[6]),
        ],
        domainFn: (ChartData sales, _) => sales.day,
        measureFn: (ChartData sales, _) => sales.amountSpent,
          colorFn: (ChartData sales, _) => sales.getSpendingColor(), // Set to red color
      ),
      charts.Series(
        id: "Доход",
        data: [
          ChartData('Вс', 0, weeklyIncome[0]),
          ChartData('Пн', 0, weeklyIncome[1]),
          ChartData('Вт', 0, weeklyIncome[2]),
          ChartData('Ср', 0, weeklyIncome[3]),
          ChartData('Чт', 0, weeklyIncome[4]),
          ChartData('Пт', 0, weeklyIncome[5]),
          ChartData('Сб', 0, weeklyIncome[6]),
        ],
        domainFn: (ChartData sales, _) => sales.day,
        measureFn: (ChartData sales, _) => sales.income,
          colorFn: (ChartData sales, _) => sales.getSpendingColor(),
      ),
    ];


    return Container(
      height: 300,
      padding: const EdgeInsets.all(16.0),
      child: charts.BarChart(
        series,
        animate: true,
        domainAxis: charts.OrdinalAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(
            labelStyle: charts.TextStyleSpec(
              color: charts.ColorUtil.fromDartColor(Colors.white),
            ),
          ),
        ),
        primaryMeasureAxis: charts.NumericAxisSpec(
          renderSpec: charts.GridlineRendererSpec(
            labelStyle: charts.TextStyleSpec(
              color: charts.ColorUtil.fromDartColor(Colors.white),
            ),
            lineStyle: charts.LineStyleSpec(
              color: charts.ColorUtil.fromDartColor(Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}



