import 'package:flutter/material.dart';
import 'package:mysample/delivery.dart';
import 'package:mysample/dining.dart';
import 'package:mysample/sign_in.dart';
import 'package:mysample/sign_up.dart';

void main(List<String> args) {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final borderRadius = BorderRadius.circular(20);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: const Icon(Icons.menu),
          title: const Text('Home Page'),
          actions: [
            IconButton(
              onPressed: null,
              icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const login()));
                  },
                  icon: const Icon(Icons.face)),
            ),
          ],
        ),
        body: Column(
          children: [
            Form(
              child: TextFormField(
                decoration: const InputDecoration(
                    focusColor: Colors.red,
                    icon: Icon(Icons.search),
                    hintText: 'Search Item',
                    labelText: 'Search'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  Image.asset(
                      '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/homefood.jpeg'),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const signUp()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 246, 120, 111),
                      child: const Center(
                        child: Text('Get Extra Discounts'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4), // Border width
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.asset(
                            '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/homefood2.jpeg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4), // Border width
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.asset(
                            '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/homefood2.jpeg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4), // Border width
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.asset(
                            '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/homefood2.jpeg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: BoxDecoration(
                            color: Colors.red, borderRadius: borderRadius),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.asset(
                                '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/homefood.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: BoxDecoration(
                            color: Colors.red, borderRadius: borderRadius),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.asset(
                                '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/homefood1.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(4), // Border width
                        decoration: BoxDecoration(
                            color: Colors.red, borderRadius: borderRadius),
                        child: ClipRRect(
                          borderRadius: borderRadius,
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.asset(
                                '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/homefood2.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
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
