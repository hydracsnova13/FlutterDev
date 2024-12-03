import 'package:flutter/material.dart';
import 'basic_styling_demo.dart';
import 'custom_widget_demo.dart';
import 'styling_with_themes_demo.dart';

void main() {
  runApp(StylingAndCustomWidgetDemoApp());
}

class StylingAndCustomWidgetDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Styling & Custom Widgets',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styling & Custom Widgets Demo'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BasicStylingDemo()),
                );
              },
              child: Text('Basic Styling'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomWidgetDemo()),
                );
              },
              child: Text('Custom Widgets'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StylingThemesDemo()),
                );
              },
              child: Text('Styling with Themes'),
            ),
          ],
        ),
      ),
    );
  }
}
