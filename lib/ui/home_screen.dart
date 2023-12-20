import 'package:flutter/material.dart';
import 'package:myapp/data/api/api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User')),
      body: FutureBuilder(
          future: ApiDate().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Column(
                  children: [
                    Text(snapshot.data!.result[0].email),
                    Text(snapshot.data!.info.seed),
                    Text(snapshot.data!.result[0].email),
                  ],
                ),
              );
            } else {
              return Text('error');
            }
          }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          ApiDate().getData();
        });
      }),
    );
  }
}
