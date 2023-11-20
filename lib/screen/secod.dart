import 'package:flutter/material.dart';

class SecodScreen extends StatelessWidget {
  const SecodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SecodScreen')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('orqaga')),
      ),
    );
  }
}
