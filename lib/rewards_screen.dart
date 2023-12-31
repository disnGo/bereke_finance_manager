import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

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
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            ],
          ),
        ),
      );
  }
}


