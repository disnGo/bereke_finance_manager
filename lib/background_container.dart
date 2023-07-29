import 'package:flutter/material.dart';

BackgroundContainer (child) {
    return Scaffold(
        backgroundColor: Colors.grey[900], // Dark grey background color
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Transparent app bar
          elevation: 0, // No shadow under the app bar
          title: const Text(
            'Bereke Bank Financial Manager',
            style: TextStyle(fontSize: 35.0, fontFamily: 'SourceSansPro'),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: child,
        ),
      );
  }