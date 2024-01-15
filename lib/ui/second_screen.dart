import 'package:flutter/material.dart';
import 'package:myapp/provider/model.dart';
import 'package:myapp/ui/page.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  String text;
  Color color;
  SecondScreen({super.key, required this.color, required this.text});
  String a = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Column(
        children: [
          Container(
            height: 100,
            color: color,
            child: Text(
              context.read<ProviderModel>().count.toString(),
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Third()));
      }),
    );
  }
}
