import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:barcode_scan/barcode_scan.dart';


class AttendClass extends StatefulWidget{
  @override
  _AttendClassPage createState()=> _AttendClassPage();
}
class _AttendClassPage extends State<AttendClass> {
  // This widget contains the main dashboard for the application.
  String result = "Scan to Attend Class";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7B51D3),
        title: Text('Attend Class', style: TextStyle(fontSize: 24, color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: <Widget>[
        IconButton(
          icon: Icon(Icons.send),
          onPressed: (){}),
                 
      ], 
      ),
      //home:
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: FittedBox(fit: BoxFit.fill,child: Image(image: AssetImage('assets/images/iAttended2.jpg')),),
          
                    ),
                    
                  ),
            floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.camera_alt),
            label: Text('Scan QR to Attend Class'),
            onPressed: _scanQR,
                      )
                  );
              
                
              }
        Future _scanQR() async {
          try{
            String qrResult = (await BarcodeScanner.scan()) as String;
            setState(() {
              result  = qrResult;
            });
          }
          on PlatformException catch (ex){
            if(ex.code==BarcodeScanner.cameraAccessDenied){
              setState(() {
                result = 'Camera Access Denied';
              });
            }
            else{
              setState(() {
                result = "Unknown error $ex";
              });
            }
          }
          on FormatException{
            setState(() {
              result = "You pressed the back button before scanning";
            });
          }
          catch(ex){
            setState(() {
              result = "Unknown Error $ex";
            });
          }
        }
            }
            
            

