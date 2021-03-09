import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Styles
  final TextStyle textStyles = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  // State
  final counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Taps counter:",
            ),
            Text(
              "$counter",
              style: textStyles,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // counter += 1;
        },
        child: Icon(
          Icons.add,
          size: 34,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
