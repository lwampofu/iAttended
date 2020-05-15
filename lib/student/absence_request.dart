import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class EmailApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<EmailApp> {

  bool isHTML = false;

  final _recipientController = TextEditingController(

    text: 'john.nyagaka@ashesi.edu.gh',

  );

  final _subjectController = TextEditingController(text: 'Absence Request');

  final _bodyController = TextEditingController(

    text: 'I hope this email finds you well...',

  );

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> send() async {

    final Email email = Email(

      body: _bodyController.text,

      subject: _subjectController.text,

      recipients: [_recipientController.text],

      isHTML: isHTML,

    );

    String platformResponse;

    try {

      await FlutterEmailSender.send(email);

      platformResponse = 'success';

    } catch (error) {

      platformResponse = error.toString();

    }
    if (!mounted) return;

    _scaffoldKey.currentState.showSnackBar(SnackBar(

      content: Text(platformResponse),

    ));

  }
  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(primaryColor: Colors.red),

      home: Scaffold(

        key: _scaffoldKey,

        appBar: AppBar(          
        elevation: 0,
        backgroundColor: Color(0xFF7B51D3),
        title: Text('Absence Request', style: TextStyle(fontSize: 24, color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: <Widget>[

            IconButton(
              onPressed: (){},
              icon: Icon(Icons.send),

            )

          ]

        ),

        body: SingleChildScrollView(

          child: Padding(

            padding: EdgeInsets.all(8.0),

            child: Column(

              mainAxisSize: MainAxisSize.max,

              // mainAxisAlignment: MainAxisAlignment.spaceBetween,

              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[

                Padding(

                  padding: EdgeInsets.all(8.0),

                  child: TextField(

                    controller: _recipientController,

                    decoration: InputDecoration(

                      border: OutlineInputBorder(),

                      labelText: 'Recipient',

                    ),

                  ),

                ),

                Padding(

                  padding: EdgeInsets.all(8.0),

                  child: TextField(

                    controller: _subjectController,

                    decoration: InputDecoration(

                      border: OutlineInputBorder(),

                      labelText: 'Subject',

                    ),

                  ),

                ),

                Padding(

                  padding: EdgeInsets.all(8.0),

                  child: TextField(

                    controller: _bodyController,

                    maxLines: 10,

                    decoration: InputDecoration(

                        labelText: 'Body', border: OutlineInputBorder()),

                  ),

                ),

                CheckboxListTile(

                  title: Text('HTML'),

                  onChanged: (bool value) {

                    setState(() {

                      isHTML = value;

                    });

                  },

                  value: isHTML,

                ),

                

              ],

            ),

          ),

        ),
/* 
        floatingActionButton: FloatingActionButton.extended(

          icon: Icon(Icons.camera),

          label: Text('Add Image'),

          onPressed: _openImagePicker,

        ), */

      ),

    );

  }



//enables the email to have an attachment as an image
/*   void _openImagePicker() async {


File pick = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {

      attachments.add(pick.path);

    });

  } */

}
class FlutterEmailSender{
  static const MethodChannel _channel = const MethodChannel('Absence Request Sender');

  static Future<void> send(Email mail){
    return _channel.invokeMethod('send', mail.toJson());
  }
}
class Email{
  final String subject;
  final List<String> recipients;
  final List<String> cc;
  final List<String> bcc;
  final String body;
  final List<String> attachmentPaths;
  final bool isHTML;

  Email({
    this.subject = '',
    this.body = '',
    this.recipients = const [],
    this.cc =  const [],
    this.bcc =  const [],
    this.attachmentPaths =  const [],
    this.isHTML = false,
  });

  Map<String, dynamic> toJson(){
    return{
      'subject' : subject,
      'body':body,
      'cc': cc,
      'bcc':bcc,
      'attachment_paths':attachmentPaths,
      'is_HTML': isHTML
    };
  }


}      
  