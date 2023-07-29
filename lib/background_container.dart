import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart'; // Import the Sizer package

BackgroundContainer(child) {
  return Scaffold(
    backgroundColor: Colors.grey[900], // Dark grey background color
    appBar: AppBar(
      backgroundColor: Colors.transparent, // Transparent app bar
      elevation: 0, // No shadow under the app bar
      title: Text(
        'Финансовый помощник Bereke Bank',
        style: TextStyle(fontSize: 30.sp, fontFamily: 'SourceSansPro'), // Use Sizer to set font size
      ),
    ),
    body: SingleChildScrollView(
      padding: EdgeInsets.all(2.h), // Use Sizer to set padding
      child: child,
    ),
  );
}
