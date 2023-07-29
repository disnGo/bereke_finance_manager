import 'package:flutter/material.dart';

class HeaderBlock extends StatelessWidget{
  const HeaderBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300, // Set the desired width
      height: 180,// Set the desired height
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0), // Rounded corners
          ),
          color: Colors.grey[800], // Dark gray background color
          child: const Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      'На новый телефон',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // White text color
                        fontFamily: 'SourceSansPro', // Source Sans Pro font
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 30)),
                        Text(
                          '\₸900,000',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.green, // Emerald green text color
                            fontFamily: 'SourceSansPro', // Source Sans Pro font
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          '\₸800,000',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.red, // Red text color
                            fontFamily: 'SourceSansPro', // Source Sans Pro font
                          ),
                        ),
                      ],
                    ),// Increased distance
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(Icons.arrow_circle_up, color: Colors.green,size: 50,),
                        ),
                        SizedBox(width: 90),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(Icons.arrow_circle_down, color: Colors.red,size: 50,),
                        )
                      ],
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 0.0),
                    //   child: Icon(Icons.arrow_circle_up, color: Colors.green,),
                    // ),
                    SizedBox(height: 8.0), // Increased distance

                    // You can add more widgets here if needed
                  ],
                ),
              ), // Arrow icon on the right side
            ],
          ),
        ),
    );
  }
}