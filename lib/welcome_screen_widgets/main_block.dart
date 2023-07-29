import 'package:bereke_finance_manager/stats_screen.dart';
import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;


class MainBlock extends StatelessWidget {
  const MainBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300, // Set the desired width
      height: 200, // Set the desired height
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  const StatsScreen()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0), // Rounded corners
          ),
          color: Colors.grey[800], // Dark gray background color
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30.0, 8.0, 10.0, 8.0), // Adjusted the padding
                child: CircleAvatar(
                  radius: 60.0, // Increased avatar size
                  backgroundImage: AssetImage('assets/user_avatar.png'),
                ),
              ),
              SizedBox(width: 32.0), // Increased distance
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balance: \$100,000',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // White text color
                        fontFamily: 'SourceSansPro', // Source Sans Pro font
                      ),
                    ),
                    SizedBox(height: 16.0), // Increased distance
                    Text(
                      'Income: \$900,000',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.green, // Emerald green text color
                        fontFamily: 'SourceSansPro', // Source Sans Pro font
                      ),
                    ),
                    SizedBox(height: 8.0), // Increased distance
                    Text(
                      'Expenses: \$800,000',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.red, // Red text color
                        fontFamily: 'SourceSansPro', // Source Sans Pro font
                      ),
                    ),
                    // You can add more widgets here if needed
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Icon(Icons.arrow_forward, color: Colors.white,),
              ), // Arrow icon on the right side
            ],
          ),
        ),
      ),
    );
  }
}
