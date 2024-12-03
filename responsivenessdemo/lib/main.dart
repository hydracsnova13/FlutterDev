import 'package:flutter/material.dart';
import 'media_query_demo.dart';
import 'layout_builder_demo.dart';
import 'flexible_expanded_demo.dart';
import 'aspect_ratio_demo.dart';

void main() {
  runApp(ResponsivenessDemoApp());
}

class ResponsivenessDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsiveness Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsiveness Types'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MediaQueryDemo()),
                );
              },
              child: Text('MediaQuery Responsiveness'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutBuilderDemo()),
                );
              },
              child: Text('LayoutBuilder Responsiveness'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FlexibleExpandedDemo()),
                );
              },
              child: Text('Flexible & Expanded Responsiveness'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AspectRatioDemo()),
                );
              },
              child: Text('AspectRatio Responsiveness'),
            ),
          ],
        ),
      ),
    );
  }
}
