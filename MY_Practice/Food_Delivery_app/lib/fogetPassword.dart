import 'package:flutter/material.dart';
import 'package:mysample/MyHomePage.dart';
import 'dining.dart';
import 'sign_in.dart';
import 'delivery.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('Reset Password'),
          actions: [
            IconButton(
              onPressed: null,
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => login(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.face)),
            ),
          ],
        ),
        body: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                  '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/login.png'),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter id';
                  }
                  return null;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    icon: Icon(Icons.face),
                    hintText: 'Enter your email',
                    labelText: 'Id'),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter ',
                    labelText: 'Old Password'),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter your new Password',
                    labelText: 'New Password'),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Re-Enter your new Password',
                    labelText: 'New Password'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const ElevatedButton(
                        onPressed: null,
                        child: Text('Back'),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully Reset'),
                            ),
                          );
                        }
                      },
                      child: const Text('Reset'))
                ],
              ),
            ],
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
