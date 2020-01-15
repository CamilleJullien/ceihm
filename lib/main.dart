import 'package:flutter/material.dart';
import 'goals/goals.dart';
import 'synthesis.dart';
import 'home.dart';
import 'package:ceihm/goals/goals.dart';
import 'profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dietétique',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

