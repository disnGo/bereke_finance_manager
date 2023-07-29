import 'package:flutter/material.dart';

class FillerBlock extends StatelessWidget {
  const FillerBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
      ),
      color: Colors.grey[800], // Dark gray background color
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Мой друг, твои деньги уже заявляют о своей независимости! Они хотят свою реалити-шоу "Сделки и Потрясения"!',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white, // White text color
            fontFamily: 'SourceSansPro', // Source Sans Pro font
          ),
        ),
      ),
    );
  }
}
