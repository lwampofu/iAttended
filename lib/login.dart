import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'student_dashboard.dart';
//import 'package:iattended_ui/student/stud_dashboard.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  MediaQueryData queryData;
  
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
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
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
                            onTap: () {
                              print('you tapped on create account');
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SignUpPage(),
                                ),
                              );
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
                                onTap: () {
                                  print('you tapped on sign in button');
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>Dashboard())
                                  );
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
  Color whitec = Colors.white;
  Color bluec = Color(0xFF7B51D3);

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: SignUpPainter(),
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
              Padding(
                padding: EdgeInsets.all(queryData.size.width * 0.07),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: queryData.size.width * 0.1),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Profession',
                          hintText: 'Profession',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: queryData.size.width * 0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
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
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
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
                                onTap: () {
                                  print('you tapped on sign up button');
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>SignInPage())
                                  );
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
