import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('forms & inputs'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formkey = GlobalKey<FormState>();

  void submitfn() {
    if (formkey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('submitted'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter Full Name',
              labelText: 'Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter your name';
              }
              return null;
            },
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter email';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                hintText: 'please Enter your email',
                labelText: "E-mail"),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter DOB';
              }
              return null;
            },
            keyboardType: TextInputType.datetime,
            decoration: const InputDecoration(
              hintText: 'Enter your DOB',
              labelText: 'DOB',
              icon: Icon(Icons.date_range),
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter DOB';
              }
              return null;
            },
            decoration: const InputDecoration(
              icon: Icon(Icons.details),
              hintText: 'Enter full Address',
              labelText: 'Address',
            ),
          ),
          ElevatedButton(
            onPressed: () => submitfn(),
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
