import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import this for setting status bar color

import 'welcome_screen_widgets/main_block.dart';
import 'welcome_screen_widgets/filler_block.dart';
import 'welcome_screen_widgets/cashback_block.dart';
import 'welcome_screen_widgets/goals_block.dart';
import 'welcome_screen_widgets/rewards_block.dart';
import 'welcome_screen_widgets/virtual_amiyan.dart';

void main() {
  runApp(const MyApp());
}

class ResponsivePadding extends StatelessWidget {
  final Widget child;
  final double paddingFraction; // A fraction of the screen width for padding

  const ResponsivePadding({
    Key? key,
    required this.child,
    this.paddingFraction = 0.004, // 0.4% of screen width as default padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double padding = screenWidth * paddingFraction;

    return Padding(padding: EdgeInsets.all(padding), child: child);
  }
}

class ResponsiveSizedBox extends StatelessWidget {
  final double heightFraction; // A fraction of the screen height for SizedBox height

  const ResponsiveSizedBox({
    Key? key,
    this.heightFraction = 0.01, // 1% of screen height as default SizedBox height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * heightFraction;

    return SizedBox(height: boxHeight);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set the status bar color to match the dark background
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.grey[900],
    ));

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900], // Dark grey background color
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Transparent app bar
          elevation: 0, // No shadow under the app bar
          title: const Text(
            'Финансовый помощник Bereke Bank',
            style: TextStyle(fontSize: 30.0, fontFamily: 'SourceSansPro'),
          ),
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Здравствуйте, Қасымжомарт!',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ResponsivePadding(child: MainBlock()),
              ResponsiveSizedBox(),
              ResponsivePadding(child: FillerBlock()),
              ResponsiveSizedBox(),
              Text(
                'Мои кэшбеки',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ResponsivePadding(child: CashbackBlock()),
              ResponsiveSizedBox(),
              Text(
                'Мои цели',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ResponsivePadding(child: GoalsBlock()),
              ResponsiveSizedBox(),
              Text(
                'Мои награды',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ResponsivePadding(child: RewardsBlock()),
              ResponsiveSizedBox(),
              Text(
                'Мои виртуальные кошельки',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // Add VirtualPotBlock for the "Food" category
              VirtualPotBlock(
                category: 'Еда',
                monthlyLimit: 100,
                initialSpentAmount: 87,
              ),
              ResponsiveSizedBox(),

              // Add VirtualPotBlock for the "Fuel" category
              VirtualPotBlock(
                category: 'АЗС',
                monthlyLimit: 150,
                initialSpentAmount: 110,
              ),
              ResponsiveSizedBox(),
              
            ],
          ),
        ),
      ),
    );
  }
}
