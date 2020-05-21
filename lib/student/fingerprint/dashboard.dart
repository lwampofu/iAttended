import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF7B51D3),
            title: Text('Attend Class', style: TextStyle(fontSize: 24, color: Colors.white),),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,            
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              "assets/undraw.co/ashesi.png",
              fit: BoxFit.fill,
              alignment: Alignment.center,

            ),
          ),
          Text(
            "You have successfully taken attendance",
            style: GoogleFonts.passionOne(fontSize: 32.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),

        ],
      ),
    );
  }
}