import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'student_dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  MediaQueryData queryData;
  final _auth = FirebaseAuth.instance;
  String email, password;
  bool showProgress = false;
  
  Color greyc = Color(0xff494F58);
  Color bluec = Color(0xFF7B51D3);

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(      
      body: SingleChildScrollView(
        
        child: CustomPaint(
          painter: SignInPainter(),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              SizedBox(height: queryData.size.width * 0.1),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.05),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: queryData.size.width * 0.13),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.21),
                  Text(
                    'Welcome',
                    style: TextStyle(                      
                      fontSize: queryData.size.width * 0.11,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.21),                  
                  Text(
                    'Back',
                    
                    style: TextStyle(
                      
                      fontSize: queryData.size.width * 0.11,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: queryData.size.width * 0.22),
              Padding(
                padding: EdgeInsets.all(queryData.size.width * 0.07),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: queryData.size.width * 0.2),
                      TextFormField(
                        onChanged: (value) {
                          email = value; //get value from textField
                        },
                        decoration: InputDecoration(
                        hintText: "Enter your Email",
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)))),
              ),
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
                        onChanged: (value) {
                          password = value; //get value from textField
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () async {setState(() {
                                showProgress = true;
                                });
                                try {
                                      final newuser =
                                      await _auth.createUserWithEmailAndPassword(
                                      email: email, password: password);

                                      if (newuser != null) {

                                        Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => SignUpPage()),
                                        );
                                          setState(() {
                                          showProgress = false;
                                        });
                                          }
                                          } catch (e) {}
                                            },

                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                fontSize: queryData.size.width * 0.05,
                                fontWeight: FontWeight.bold,                                
                              ),
                            ),
                          )                          ,
                          ClipOval(
                            child: Material(
                              color: Color(0xFF7B51D3),
                              child: InkWell(
                                onTap: () async {
                                  setState(() {
                                    showProgress = true;
                                  });

                                  try {
                                    final newUser = await _auth.signInWithEmailAndPassword(
                                        email: email, password: password);

                                    print(newUser.toString());

                                    if (newUser != null) {
                                      Fluttertoast.showToast(
                                          msg: "Login Successfull",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.blueAccent,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                        print('you tapped on sign in button');
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context)=>Dashboard())
                                        );

                                      setState(() {
                                        showProgress = false;
                                      });
                                    }
                                  } catch (e) {}
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      queryData.size.width * 0.07),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              print('you tapped on forgot password');
                              /* Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SignUpPage(),
                                ),
                              ); */
                            },
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontSize: queryData.size.width * 0.05,                                
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Color whitec = Colors.white;
    
    const Color bluec = Color(0xFF7B51D3);

    var paint = Paint();

    paint.color = whitec;

    Offset c1 = Offset(size.width * 1.0, size.width * 0.01);
    double radius1 = size.width * 1.1;

    canvas.drawCircle(c1, radius1, paint);

   

    Offset c2 = Offset(size.width * 0.05, size.width * 0.05);
    double radius2 = size.width * 0.9;

    canvas.drawCircle(c2, radius2, paint);

    paint.color = bluec;

    Offset c3 = Offset(size.width * 0.0, size.width * 0.0);
    double radius3 = size.width * 0.5;

    canvas.drawCircle(c3, radius3, paint);
  }

  @override
  bool shouldRepaint(SignInPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(SignInPainter oldDelegate) => false;
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  MediaQueryData queryData;
  final _auth = FirebaseAuth.instance;
  bool showProgress = false;
  String email, password;
  Color whitec = Colors.white;
  Color bluec = Color(0xFF7B51D3);

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: SignInPainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: queryData.size.width * 0.1),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.05),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: queryData.size.width * 0.05),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.07),
                  Text(
                    'Create',
                    style: TextStyle(
                      fontSize: queryData.size.width * 0.11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: queryData.size.width * 0.07),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: queryData.size.width * 0.11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
              height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(queryData.size.width * 0.07),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: queryData.size.width * 0.1),
                      TextFormField(
                        textAlign: TextAlign.center,                       
                        
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0))),
                          labelText: 'Name',
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: queryData.size.width * 0.05,
                          ),
                        ),
                      ),                                         
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                        email = value; //get the value entered by user.
                          },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0))),
                          labelText: 'Email',
                          hintText: 'Enter your Email Address',
                          
                          hintStyle: TextStyle(
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.black,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                        password = value; //get the value entered by user.
                      },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0))),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              print('you tapped on sign in button');
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SignInPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Have an account? Sign in",
                              style: TextStyle(
                                fontSize: queryData.size.width * 0.05,
                                fontWeight: FontWeight.bold,                                
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Material(
                              color: Color(0xFF7B51D3),
                              child: InkWell(
                                onTap: () async{
                                  print('you tapped on sign up button');                                  
                                  setState(() {
                                  showProgress = true; });
                                  
                                   try {
                                  final newuser =
                                  await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);

                                  if (newuser != null) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignInPage()),
                                      );

                                      setState(() {
                                        showProgress = false;
                                      });
                                    }
                                  } catch (e) {}
                                      },
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      queryData.size.width * 0.07),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Color whitec = Colors.white;
    const Color bluec = Color(0xFF7B51D3);

    var paint = Paint();

    paint.color = whitec;

    Offset c1 = Offset(size.width * 0.10, size.width * 0.4);
    double radius1 = size.width * 1.0;

    canvas.drawCircle(c1, radius1, paint);

    paint.color = bluec ;

    Offset c2 = Offset(size.width * 0.2, size.height * 0.02);
    double radius2 = size.width * 0.6;

    canvas.drawCircle(c2, radius2, paint);
  }

  @override
  bool shouldRepaint(SignInPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(SignInPainter oldDelegate) => true;
}
