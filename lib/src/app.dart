import 'package:flutter/material.dart';
import 'package:flutter_starter_app/src/screens/counter.dart';
// import 'package:flutter_starter_app/src/screens/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
