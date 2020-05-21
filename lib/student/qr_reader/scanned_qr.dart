import 'package:flutter/material.dart';

class GeneratePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeneratePageState();
}

class GeneratePageState extends State<GeneratePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF7B51D3),
            title: Text('Confirm Attendance', style: TextStyle(fontSize: 24, color: Colors.white),),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,            
          ),
    );
  }
}