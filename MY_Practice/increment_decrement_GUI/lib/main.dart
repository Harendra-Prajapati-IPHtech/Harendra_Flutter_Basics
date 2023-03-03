import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }
  void _decrement(){
    setState(() {
      _counter --;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Increment'),
          ),
        ),

        ElevatedButton(
          onPressed: _decrement,
           child: const Padding(
             padding: EdgeInsets.all(8.0),
             child: Text('Decrement'),
           ),),
        const SizedBox(width: 10),
        Text('Count: $_counter'),
      ],
    );
  }
}
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}