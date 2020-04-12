import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moviestreaming/widgets/login.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.grey[600],
      title:Center( child: Text('Sign Up ')),
    ),
      body: Container(
          alignment: Alignment.centerLeft,
          margin:  const EdgeInsets.only(top: 100.0),
          child: Form(
              key: _formKey,
            child:  Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: InputBorder.none,
                      labelText:'Email or Phone number',
                    ),

                    onSaved: (input) => _email = input,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.remove_red_eye),
                      border: InputBorder.none,
                      labelText: 'Password',
                    ),
                    onSaved: (input) => _password = input,
                    // obscureText: true,
                  ),
                  FlatButton(
                    color: Colors.grey[600],
                    splashColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    onPressed: signUp,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                  ),
                ],
              )
          )
      ),
    );
  }

  void signUp() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInPage()));
      }catch(e){
        print(e.message);
      }
    }
  }
}