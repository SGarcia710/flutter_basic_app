import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // Styles
  final _textStyles = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  // State
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Taps counter:",
            ),
            Text(
              "$_counter",
              style: _textStyles,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 16),
        FloatingActionButton(onPressed: _substract, child: Icon(Icons.remove)),
        SizedBox(width: 8),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: _reset, child: Icon(Icons.exposure_zero)),
        SizedBox(width: 16),
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _substract() {
    setState(() => _counter--);
  }

  void _reset() {
    setState(() => _counter = 0);
  }
}
