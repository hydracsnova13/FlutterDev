import 'package:flutter/material.dart';

class FlexibleExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible & Expanded Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(color: Colors.red),
          ),
          Flexible(
            flex: 2,
            child: Container(color: Colors.green),
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
