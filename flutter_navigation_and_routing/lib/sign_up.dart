import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const signUp());
}

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Image.asset(
            '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/iph.png'),
        TextFormField(
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              icon: Icon(Icons.face),
              hintText: 'Enter your Full Name',
              labelText: 'Full Name'),
        ),
        TextFormField(
          keyboardType: TextInputType.datetime,
          decoration: const InputDecoration(
              icon: Icon(Icons.date_range),
              hintText: 'Enter your DOB',
              labelText: 'DOB'),
        ),
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter your Contact',
              labelText: 'Mobile no.'),
        ),
        TextFormField(
          keyboardType: TextInputType.streetAddress,
          decoration: const InputDecoration(
              icon: Icon(Icons.streetview),
              hintText: 'Enter your Address',
              labelText: 'Address'),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Enter your Email',
              labelText: 'E-mail'),
        ),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          decoration: const InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Enter your Password',
              labelText: 'Password'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: null, child: Text('Sign up')),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: null, child: Text('sign in')),
            ),
          ],
        )
      ],
    ));
  }
}
