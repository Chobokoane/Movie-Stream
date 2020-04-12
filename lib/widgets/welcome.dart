import 'package:flutter/material.dart';
import 'package:moviestreaming/signUp.dart';
import 'package:moviestreaming/widgets/login.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Center(child: new Text('Welcome')),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.grey[900],
              Colors.grey[800],
              Colors.grey[400]
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
//            Padding(
//              padding: EdgeInsets.all(20),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: <Widget>[
//                  Text(
//                    "Login",
//                    style: TextStyle(color: Colors.white, fontSize: 40),
//                  ),
//                  SizedBox(
//                    height: 10,
//                  ),
//
//                  Text(
//                    "Welcome Back",
//                    style: TextStyle(color: Colors.white, fontSize: 18),
//                  ),
//
//                ],
//              ),
//            ),
          SizedBox(height: 400),
            FlatButton(
              color: Colors.grey[600],
              splashColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => LogInPage() ));
              },
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

            ),
            FlatButton(
              color: Colors.grey[600],
              splashColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => SignUpPage() ));
              },
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

            )
          ],
        ),
      )
    );
  }
}
