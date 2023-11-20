import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int current = 0;

  List<Widget> bodyPart = [
    Container(color: Colors.green),
    Container(color: Colors.yellow),
    Container(color: Colors.blue),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('BottomNavigatorBar Widgeti'),
          ),
          body: bodyPart[current],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                current = value;
              });
            },
            currentIndex: current,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My Account'),
              BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Cart'),
            ],
          ),
        ));
  }
}
