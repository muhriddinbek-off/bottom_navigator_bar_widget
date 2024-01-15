import 'package:flutter/material.dart';
import 'package:myapp/provider/model.dart';
import 'package:provider/provider.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = context.read<ProviderModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Third ${arg.count}'),
      ),
    );
  }
}
