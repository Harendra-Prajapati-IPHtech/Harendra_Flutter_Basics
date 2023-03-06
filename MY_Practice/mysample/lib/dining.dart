import 'package:flutter/material.dart';
import 'package:mysample/MyHomePage.dart';
import 'package:mysample/sign_in.dart';
import 'package:mysample/sign_up.dart';
import 'delivery.dart';

void main(List<String> args) {
  runApp(const DiningPage());
}

class DiningPage extends StatefulWidget {
  const DiningPage({super.key});

  @override
  State<DiningPage> createState() => _DiningPagePageState();
}

class _DiningPagePageState extends State<DiningPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('Dining'),
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
        body: Center(
          child: Column(
            children: [
              Image.asset(
                  '/Users/iphtech30/Desktop/Harendra_Flutter_Practice/MY_Practice/images/diningfood.jpeg'),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signUp()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Dining Page'),
                  ),
                ),
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
