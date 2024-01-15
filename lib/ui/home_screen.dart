import 'package:flutter/material.dart';
import 'package:myapp/provider/model.dart';
import 'package:myapp/ui/second_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ProviderModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Widget')),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data.incrument();
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
