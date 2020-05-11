import 'package:flutter/material.dart';

class Records extends StatefulWidget{
  @override
  _RecordsPage createState()=> _RecordsPage();
}
class _RecordsPage extends State<Records> {
  // This widget contains the main dashboard for the application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7B51D3),
        title: Text('Student Records', style: TextStyle(fontSize: 24, color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      /* actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){}),
          IconButton(
          icon: Icon(Icons.account_balance),
          onPressed: (){}),
       
      ], */
      ),
      
      );
       
     
    
  }
}