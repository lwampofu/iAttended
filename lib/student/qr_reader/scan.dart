import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import './scanned_qr.dart' show GeneratePage;
import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrCodeResult = " ";
  String qrCodeResultError = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF7B51D3),
            title: Text('QR Scan', style: TextStyle(fontSize: 24, color: Colors.white),),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,            
          ),
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
            image: new AssetImage('assets/images/iAttended2.jpg'), 
            fit: BoxFit.fill),
                   ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
                image: NetworkImage(
                    "https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556")),
            Text(
              qrCodeResultError,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              color: Color(0xFF7B51D3),
              padding: EdgeInsets.all(15.0),
              // ignore: missing_return
              onPressed: () async {
                try {
                  String codeScanner =
                      await BarcodeScanner.scan(); //barcode scanner
                  setState(() {
                    qrCodeResult = codeScanner;
                  }); //Camera permission denied
                } on PlatformException catch (ex) {
                  setState(() {
                    qrCodeResultError = "Encountered Error: $ex";
                  }); //Program closed Early
                } on FormatException catch (ex) {
                  setState(() {
                    qrCodeResultError = "Encountered Error: $ex";
                  });
                }

                //Checking if qr match
                if (qrCodeResult == "CS415" ||
                    qrCodeResult == "CS456" ||
                    qrCodeResult == "SOAN411" ||
                    qrCodeResult == "ECON100") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GeneratePage()),
                  );
                } else {
                  return qrCodeResultError = "QR Does Not Match Any Class";
                }
              },
              child: Text(
                "Scan QR Code For The Course",
                style:
                    TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 3.0),
                  borderRadius: BorderRadius.circular(20.0)),
            )
          ],
        ),
      ),
    );
  }
}