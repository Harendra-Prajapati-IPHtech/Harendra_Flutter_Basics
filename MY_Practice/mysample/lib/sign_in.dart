import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(login());
}

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Image.asset(
            '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/iph.png'),
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
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: null, child: Text('sign in')),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: null, child: Text('sign up')),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ElevatedButton(onPressed: null, child: Text('Forget Password')),
          ],
        )
      ],
    ));
  }
}
