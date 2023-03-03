import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'sign_up.dart';
import 'sign_in.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
          ),
          title: const Text('Sign Up'),
          actions: [
            IconButton(
              onPressed: null,
              icon:
                  IconButton(onPressed: () => signUp(), icon: Icon(Icons.face)),
            ),
          ],
        ),
        body: signUp(),
      ),
    );
  }
}
