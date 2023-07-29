import 'package:bereke_finance_manager/constants.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
// import 'custom_pie_chart.dart';

// import 'package:bereke_finance_manager/icon_widgets/icon_btn.dart';

class CustomChart extends StatefulWidget {
  const CustomChart(
      {Key? key,
      required this.expensesBalance,
      required this.expensesSpend,
      required this.expensesTarget})
      : super(key: key);

  final List<double> expensesBalance;
  final List<double> expensesSpend;
  final List<double> expensesTarget;

  @override
  _CustomChartState createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  bool showChartBalance = true;
  bool showChartSpending = false;
  bool showChartTarget = false;

  @override
  Widget build(BuildContext context) {
    List<double> expensesBalance = widget.expensesBalance;
    List<double> expensesSpend = widget.expensesSpend;
    List<double> expensesTarget = widget.expensesTarget;
    double mostExpensiveB = 0;
    double mostExpensiveS = 0;
    double mostExpensiveT = 0;
    double sumB = 0;
    double sumS = 0;
    double sumT = 0;
    for (var price in expensesBalance) {
      sumB += price;
      if (price > mostExpensiveB) {
        mostExpensiveB = price;
      }
    }
    for (var price in expensesSpend) {
      sumS += price;
      if (price > mostExpensiveS) {
        mostExpensiveS = price;
      }
    }
    for (var price in expensesTarget) {
      sumT += price;
      if (price > mostExpensiveT) {
        mostExpensiveT = price;
      }
    }
    double avgExpensiveB = sumB / expensesBalance.length;
    double avgExpensiveS = sumS / expensesSpend.length;
    double avgExpensiveT = sumT / expensesTarget.length;

    return Padding(
      padding: EdgeInsets.all(1.w),
      child: Column(
        children: [
          Text(
            'Недельные Расходы',
            style: GoogleFonts.sourceSansPro(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: kTextColor,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // CustomBtn(onPress: () {}, iconData: Icons.arrow_back_outlined),
              Text(
                'Июль 24, 2023 - Июль 29, 2023',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: kTextColor),
              ),
              // CustomBtn(onPress: () {}, iconData: Icons.arrow_forward_outlined),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // if (showChartBalance)

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showChartBalance = true;
                    showChartSpending = false;
                    showChartTarget = false;
                  });
                },
                child:
                    Text(showChartBalance ? 'Предыдущая неделя*' : 'Предыдущая неделя'),
              ),
              // if (showChartSpending)
              //   Container(
              //     height: 80,
              //     color: Colors.blue,
              //     // Place your code to display the spending chart here
              //   ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showChartBalance = false;
                    showChartSpending = true;
                    showChartTarget = false;
                  });
                },
                child: Text(
                    showChartSpending ? 'Текущая неделя*' : 'Текущая неделя'),
              ),
              // if (showChartTarget)
              //   Container(
              //     height: 120,
              //     color: Colors.green,
              //     // Place your code to display the target chart here
              //   ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showChartBalance = false;
                    showChartSpending = false;
                    showChartTarget = true;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        // Color when the button is pressed
                        return Colors
                            .amber; // Replace this with your desired color
                      } else {
                        // Color when the button is not pressed
                        return Colors
                            .amber; // Replace this with your desired color
                      }
                    },
                  ),
                ),
                child: Text(showChartTarget ? 'Цель *' : 'Цель'),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Stack(
            children: [
              Divider(
                height: 220 -
                    (showChartTarget
                        ? avgExpensiveT
                        : showChartSpending
                            ? avgExpensiveS
                            : avgExpensiveB),
                thickness: 2.5,
                color: Colors.orange,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomBar(
                      day: 'Вс',
                      amountSpent: showChartTarget
                          ? expensesTarget[0]
                          : showChartSpending
                              ? expensesSpend[0]
                              : expensesBalance[0],
                      height: showChartTarget
                          ? avgExpensiveT
                          : showChartSpending
                              ? avgExpensiveS
                              : avgExpensiveB,
                      // averageValue: showChartTarget ? avgExpensiveT : showChartSpending ? avgExpensiveS : avgExpensiveB,
                      expensive: showChartTarget
                          ? mostExpensiveT
                          : showChartSpending
                              ? mostExpensiveS
                              : mostExpensiveB),
                  CustomBar(
                      day: 'Пн',
                      amountSpent: showChartTarget
                          ? expensesTarget[1]
                          : showChartSpending
                              ? expensesSpend[1]
                              : expensesBalance[1],
                      height: showChartTarget
                          ? avgExpensiveT
                          : showChartSpending
                              ? avgExpensiveS
                              : avgExpensiveB,
                      // averageValue: showChartTarget ? avgExpensiveT : showChartSpending ? avgExpensiveS : avgExpensiveB,
                      expensive: showChartTarget
                          ? mostExpensiveT
                          : showChartSpending
                              ? mostExpensiveS
                              : mostExpensiveB),
                  CustomBar(
                      day: 'Вт',
                      amountSpent: showChartTarget
                          ? expensesTarget[2]
                          : showChartSpending
                              ? expensesSpend[2]
                              : expensesBalance[2],
                      height: showChartTarget
                          ? avgExpensiveT
                          : showChartSpending
                              ? avgExpensiveS
                              : avgExpensiveB,
                      // averageValue: showChartTarget ? avgExpensiveT : showChartSpending ? avgExpensiveS : avgExpensiveB,
                      expensive: showChartTarget
                          ? mostExpensiveT
                          : showChartSpending
                              ? mostExpensiveS
                              : mostExpensiveB),
                  CustomBar(
                      day: 'Ср',
                      amountSpent: showChartTarget
                          ? expensesTarget[3]
                          : showChartSpending
                              ? expensesSpend[3]
                              : expensesBalance[3],
                      height: showChartTarget
                          ? avgExpensiveT
                          : showChartSpending
                              ? avgExpensiveS
                              : avgExpensiveB,
                      // averageValue: showChartTarget ? avgExpensiveT : showChartSpending ? avgExpensiveS : avgExpensiveB,
                      expensive: showChartTarget
                          ? mostExpensiveT
                          : showChartSpending
                              ? mostExpensiveS
                              : mostExpensiveB),
                  CustomBar(
                      day: 'Чт',
                      amountSpent: showChartTarget
                          ? expensesTarget[4]
                          : showChartSpending
                              ? expensesSpend[4]
                              : expensesBalance[4],
                      height: showChartTarget
                          ? avgExpensiveT
                          : showChartSpending
                              ? avgExpensiveS
                              : avgExpensiveB,
                      // averageValue: showChartTarget ? avgExpensiveT : showChartSpending ? avgExpensiveS : avgExpensiveB,
                      expensive: showChartTarget
                          ? mostExpensiveT
                          : showChartSpending
                              ? mostExpensiveS
                              : mostExpensiveB),
                  CustomBar(
                      day: 'Пт',
                      amountSpent: showChartTarget
                          ? expensesTarget[5]
                          : showChartSpending
                              ? expensesSpend[5]
                              : expensesBalance[5],
                      height: showChartTarget
                          ? avgExpensiveT
                          : showChartSpending
                              ? avgExpensiveS
                              : avgExpensiveB,
                      // averageValue: showChartTarget ? avgExpensiveT : showChartSpending ? avgExpensiveS : avgExpensiveB,
                      expensive: showChartTarget
                          ? mostExpensiveT
                          : showChartSpending
                              ? mostExpensiveS
                              : mostExpensiveB),
                  CustomBar(
                      day: 'Сб',
                      amountSpent: showChartTarget
                          ? expensesTarget[6]
                          : showChartSpending
                              ? expensesSpend[6]
                              : expensesBalance[6],
                      height: showChartTarget
                          ? avgExpensiveT
                          : showChartSpending
                              ? avgExpensiveS
                              : avgExpensiveB,
                      // averageValue: showChartTarget ? avgExpensiveT : showChartSpending ? avgExpensiveS : avgExpensiveB,
                      expensive: showChartTarget
                          ? mostExpensiveT
                          : showChartSpending
                              ? mostExpensiveS
                              : mostExpensiveB),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBar extends StatelessWidget {
  CustomBar(
      {Key? key,
      required this.day,
      required this.amountSpent,
      required this.height,
      // required this.averageValue,
      required this.expensive})
      : super(key: key);
  final String day;
  final double amountSpent;
  final double height;
  // final double averageValue;
  final double expensive;

  final double _maxBarHeight = 20.h;

  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / expensive * _maxBarHeight;
    // final averageBarHeight = averageValue / expensive * _maxBarHeight;

    return Column(
      children: [
        Text(
          '\₸${amountSpent.toStringAsFixed(2)}',
          style: GoogleFonts.sourceSansPro(
              fontSize: 11.sp, fontWeight: FontWeight.w500, color: kTextColor),
        ),
        SizedBox(
          height: 1.h,
        ),
        day.isEmpty
            ? Container(
                height: barHeight,
                width: 3.w,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(1.h),
                ),
              )
            : Container(
                height: barHeight,
                width: 3.w,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(1.h),
                ),
              ),

        SizedBox(
          height: 1.h,
        ),
        Text(
          day,
          style: GoogleFonts.sourceSansPro(
              fontSize: 11.sp, fontWeight: FontWeight.w600, color: kTextColor),
        ),
        SizedBox(
          height: 1.h,
        ),
        if (day.isNotEmpty)
          Container(
            width: 30,
            height: 2,
            color: Colors.red, // Цвет линии среднего значения
          ),
        // Container(
        //   height: averageBarHeight, // Используем высоту для среднего значения
        //   width: 3.w,
        //   decoration: BoxDecoration(
        //     color: Colors.red, // Используем красный цвет для обозначения среднего значения
        //     borderRadius: BorderRadius.circular(1.h),
        //   ),
        // ),
      ],
    );
  }
}

class CustomPie extends StatelessWidget {
  const CustomPie({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
  }) : super(key: key);

  final String title;
  final double value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '\₸${value.toStringAsFixed(2)}',
          style: GoogleFonts.sourceSansPro(
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 1.h),
        PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(
                value: value,
                color: color,
                title: title,
                titleStyle: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                showTitle: true,
              ),
            ],
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          title,
          style: GoogleFonts.sourceSansPro(
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 1.h),
        Container(
          width: 30,
          height: 2,
          color: Colors.red, // Line color for the average value
        ),
      ],
    );
  }
}
