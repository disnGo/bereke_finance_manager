import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import this for setting status bar color

import 'welcome_screen_widgets/main_block.dart';
import 'welcome_screen_widgets/filler_block.dart';
import 'welcome_screen_widgets/cashback_block.dart';
import 'welcome_screen_widgets/goals_block.dart';
import 'welcome_screen_widgets/rewards_block.dart';

void main() {
  runApp(const MyApp());
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
            'Bereke Bank Financial Manager',
            style: TextStyle(fontSize: 35.0, fontFamily: 'SourceSansPro'),
          ),
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MainBlock(),
              SizedBox(height: 16.0),
              FillerBlock(),
              SizedBox(height: 16.0),
              CashbackBlock(),
              SizedBox(height: 16.0),
              GoalsBlock(),
              SizedBox(height: 16.0),
              RewardsBlock(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
