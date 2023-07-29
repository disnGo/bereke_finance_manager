import 'package:flutter/material.dart';

import 'goals_screen_widgets/header.dart';
import 'goals_screen_widgets/progress_bar.dart';
import 'goals_screen_widgets/income_outcome.dart';
import 'goals_screen_widgets/chart_adding.dart';

class GoalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900], // Dark grey background color
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Transparent app bar
          elevation: 0, // No shadow under the app bar
          title: const Text(
            'Финансовый помощник Bereke Bank',
            style: TextStyle(fontSize: 30.0, fontFamily: 'SourceSansPro'),
          ),
        ),
        body:  SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderBlock(),
              SizedBox(height: 16,),
              Text(
                'Ваш прогресс',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16,),
              ProgressBarBlock(),
              SizedBox(height: 16,),
              InOutComeButtonBlock(),
              SizedBox(height: 16,),
              CustomBarChart(),
              // Text(
              //     'New Phone',
              //     style: TextStyle(
              //         fontSize: 35.0,
              //         color: Colors.white,
              //         fontFamily: 'SourceSansPro',
              //         fontWeight: FontWeight.bold
              //     )
              // ),
              // Card(
              //
              // ),
            ],
          ),
        ),
      );
  }
}


