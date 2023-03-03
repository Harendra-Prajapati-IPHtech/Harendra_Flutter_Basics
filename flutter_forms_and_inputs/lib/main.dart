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
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formkey = GlobalKey<FormState>();

  void submitfn() {
    print('clicked');
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
          ),
          TextFormField(
            validator: ,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                hintText: 'Enrer your email',
                labelText: "E-mail"),
          ),
          TextFormField(
            keyboardType: TextInputType.datetime,
            decoration: const InputDecoration(
              hintText: 'Enter your DOB',
              labelText: 'DOB',
              icon: Icon(Icons.date_range),
            ),
          ),
          TextFormField(
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
