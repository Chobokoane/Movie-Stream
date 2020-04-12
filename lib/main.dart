import 'package:flutter/material.dart';
import 'package:moviestreaming/moviesDetails.dart';
import 'package:moviestreaming/ui/HomeView.dart';
import 'package:moviestreaming/widgets/welcome.dart';


void main() => runApp(MyApp(
  // debugShowCheckedModeBanner: false,

));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream movies live',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Welcome(),
      routes:{
        MoviesDetails.routeName: (ctx) => MoviesDetails(),
      },
    );
  }
}