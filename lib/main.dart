import 'package:flutter/material.dart';
import 'welcome_screen_widgets/main_block.dart';
import 'welcome_screen_widgets/filler_block.dart';
import 'welcome_screen_widgets/cashback_block.dart';
import 'welcome_screen_widgets/goals_block.dart';
import 'welcome_screen_widgets/rewards_block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Text('Finance App')),
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
