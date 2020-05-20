import 'package:flutter/material.dart';
import './qr_reader/scan.dart';
import './fingerprint/home_screen.dart';



class AttendClass extends StatefulWidget{
  @override
  _AttendClassPage createState()=> _AttendClassPage();
}
class _AttendClassPage extends State<AttendClass> {
  // This widget contains the main dashboard for the application.
  String result = "Scan to Attend Class";
  @override
  Widget build(BuildContext context) {
    bool isButtonPressed = false;
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF7B51D3),
            title: Text('Attend Class', style: TextStyle(fontSize: 24, color: Colors.white),),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
            actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}),
                     
          ], 
          ),
          
          //home:
          body: new Container(
            decoration: new BoxDecoration(
            image: new DecorationImage(
            image: new AssetImage('assets/images/iAttended2.jpg'), 
            fit: BoxFit.fill),
                   ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,        
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,           
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text('Tap to Scan QR',
                      style: TextStyle(
                        fontSize: 20, 
                        color: Colors.white),),
                      color: isButtonPressed? Colors.green: Colors.amber,
                  shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 3.0),
                  borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.all(15.0),
                  onPressed: (){
                    Navigator.push(context, 
                    new MaterialPageRoute(
                      builder: (BuildContext context)=> new ScanPage()));
                  }),
                new RaisedButton(
                  child: new Text('Tap to take FingerPrint',
                  style: TextStyle(
                    fontSize: 20,
                     color: Colors.white),),
                  color:isButtonPressed? Colors.green: Color(0xFF7B51D3),
                  shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 3.0),
                  borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.all(15.0),
                  onPressed: (){
                    Navigator.push(context, 
                    new MaterialPageRoute(
                      builder: (BuildContext context)=> new HomeScreen()));

                  }),

              ]
            ),
          )
        ],

      ),
        

      )
      //end
      
                            );
                              
                                
                             
      
        
                    
          
                      
                  
              
                
              }
        
          }
        
            
            
            

