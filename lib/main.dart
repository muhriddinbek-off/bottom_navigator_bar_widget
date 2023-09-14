import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(10),
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(10),
            color: Colors.blue,
          ),
          containerWidget(Colors.green, 50),
          containerWidget(Colors.black, 200),
          containerWidget(Colors.black, 200),
        ],
      )),
    ),
  );
}

Widget containerWidget(
  Color rang,
  double boyi,
) {
  return Container(
    height: boyi,
    width: 100,
    margin: const EdgeInsets.all(10),
    color: rang,
  );
}
