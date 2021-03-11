import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Color.fromRGBO(66, 38, 171, 1),
          textTheme: TextTheme(headline1: TextStyle(color: Colors.black))),
      home: HomeScreen(),
    );
  }
}
