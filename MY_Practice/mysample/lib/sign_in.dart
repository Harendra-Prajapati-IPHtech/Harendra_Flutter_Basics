import 'package:flutter/material.dart';
import 'package:mysample/MyHomePage.dart';
import 'package:mysample/delivery.dart';
import 'package:mysample/dining.dart';
import 'package:mysample/sign_up.dart';
import 'fogetPassword.dart';
import 'package:flutter/src/material/colors.dart';

void main(List<String> args) {
  runApp(const login());
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('Sign in'),
          actions: [
            IconButton(
              onPressed: null,
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const login()));
                  },
                  icon: const Icon(Icons.face)),
            ),
          ],
        ),
        body: Container(
          child: Form(
            child: Column(
              children: [
                Image.asset(
                    '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/login.png'),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Enter your Email',
                      labelText: 'E-mail'),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: 'Enter your Password',
                      labelText: 'Password'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const signUp()));
                        },
                        child: const ElevatedButton(
                          onPressed: null,
                          child: Text('Sign up'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetPassword()));
                        },
                        child: const ElevatedButton(
                          onPressed: null,
                          child: Text(
                            'Forget',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DeliveryPage()));
                  },
                  child: const Icon(
                    Icons.delivery_dining,
                    color: Colors.red,
                  ),
                ),
                label: 'Delivery'),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                  child: const Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DiningPage()));
                },
                child: const Icon(
                  Icons.dining,
                  color: Colors.green,
                ),
              ),
              label: 'dining',
            )
          ],
        ),
      ),
    );
  }
}
