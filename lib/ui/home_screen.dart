import 'package:flutter/material.dart';
import 'package:myapp/provider/model.dart';
import 'package:myapp/ui/second_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    int a = 1;
    return Scaffold(
      appBar: AppBar(title: Text('Widget ${a++}')),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(color: Colors.blue, text: 'Blue'),
                ),
              );
            },
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(color: Colors.red, text: 'Red'),
                ),
              );
            },
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          Consumer<ProviderModel>(
            builder: (context, value, child) {
              return Center(
                child: Text(
                  value.count.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              );
            },
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<ProviderModel>().incrument();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<ProviderModel>().decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
