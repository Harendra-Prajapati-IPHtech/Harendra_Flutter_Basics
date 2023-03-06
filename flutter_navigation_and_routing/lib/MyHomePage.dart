import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
              '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/iph.png'),
          Text('Welcome to home page')
        ],
      ),
    );
  }
}
