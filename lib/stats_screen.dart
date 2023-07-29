import 'package:bereke_finance_manager/constants.dart';
import 'package:bereke_finance_manager/data/data.dart';

import 'package:bereke_finance_manager/models/type_model.dart';

import 'package:bereke_finance_manager/detail_screen.dart';
import 'package:bereke_finance_manager/icon_widgets/custom_chart.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:fl_chart/fl_chart.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

PieChartData createPieChartData() {
  // Sample data for the pie chart
  List<PieChartSectionData> pieChartData = [
    PieChartSectionData(
      color: const Color(0xFF3366FF),
      value: 25,
      title: '25%',
      radius: 60,
      titleStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
    ),
    PieChartSectionData(
      color: const Color(0xFF33FF66),
      value: 40,
      title: '40%',
      radius: 60,
      titleStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
    ),
    PieChartSectionData(
      color: const Color(0xFFFF3366),
      value: 35,
      title: '35%',
      radius: 60,
      titleStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
    ),
  ];

  // Creating the PieChartData object
  return PieChartData(
    sections: pieChartData,
    borderData: FlBorderData(show: false),
    centerSpaceRadius: 40,
    sectionsSpace: 0,
    centerSpaceColor: Colors.white,
  );
}

class _StatsScreenState extends State<StatsScreen> {
  bool showPieChart = false; // Variable to toggle between Bar Chart and Pie Chart
  PieChartData pieChartDataObj = createPieChartData();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.grey[900], // Dark grey background color
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Transparent app bar
          elevation: 0, // No shadow under the app bar
          title: const Text(
            'Аналитика',
            style: TextStyle(fontSize: 25.0, fontFamily: 'SourceSansPro'),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, int index) {
                  if (index == 0) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[800], // Use emerald green as the accent color
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                      child: showPieChart
                          ? _buildPieChart([pieChartDataObj])
                          : CustomChart(
                              expensesBalance: weeklySpendingBalance,
                              expensesSpend: weeklySpendingSpend,
                              expensesTarget: weeklySpendingTarget,
                            ),
                    );
                  } else if (index <= typeNames.length) {
                    final TypeModel typeModel = typeNames[index - 1];
                    double tAmountSpent = 0;
                    for (var expense in typeModel.expenses!) {
                      tAmountSpent += expense.cost!;
                    }
                    return _buildCategories(typeModel, tAmountSpent);
                  } else {
                    return const SizedBox.shrink();
                  }
                },
                childCount: typeNames.length + 1,
              ),
            ),

            // Toggle button
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      showPieChart = !showPieChart;
                    });
                  },
                  icon: Icon(
                    showPieChart ? Icons.bar_chart : Icons.pie_chart,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
  _buildCategories(TypeModel category, double tAmountSpent) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      typeModel: category,
                    )));
      },
      child: Container(
        width: 100.w,
        height: 13.h,
        margin: kMargin,
        padding: kPadding,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: kRadius,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category.name!,
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 14.sp,
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0,
                  ),
                ),
                Text(
                  '\₸${(category.maxAmount! - tAmountSpent).toStringAsFixed(2)} / \₸${category.maxAmount!.toStringAsFixed(2)}',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 14.sp,
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            LayoutBuilder(builder: (context, constraints) {
              final double maxBarWidth = constraints.maxWidth;
              final double percentage =
                  (category.maxAmount! - tAmountSpent) / category.maxAmount!;
              double width = percentage * maxBarWidth;
              if (width < 0) {
                width = 0;
              }
              return Stack(
                children: [
                  Container(
                    height: 3.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2.h),
                        bottomRight: Radius.circular(2.h),
                      ),
                    ),
                  ),
                  Container(
                    height: 3.h,
                    width: width,
                    decoration: BoxDecoration(
                      color: setupColor(percentage),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2.h),
                        bottomRight: Radius.circular(2.h),
                      ),
                    ),
                  ),
                ],
              );
            })
          ],
        ),
      ),
    );
  }

  _buildPieChart(List<PieChartData> data) {
    return SizedBox(
      height: 200,
      // margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      // decoration: BoxDecoration(
      //   color: kPrimaryColor,
      //   borderRadius: BorderRadius.circular(3.h),
      // ),
      child: PieChart(data[0]),
    );
  }
}
