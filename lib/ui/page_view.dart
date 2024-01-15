import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController controller = PageController();
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('covid 19', style: TextStyle(fontSize: 30)),
          Expanded(
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {});
                    count = value;
                  },
                  controller: controller,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(margin: EdgeInsets.all(30), color: Colors.green);
                  })),
          ElevatedButton(
              onPressed: () {
                count++;
                setState(() {});
              },
              child: Text('Next')),
        ],
      ),
    );
  }
}
