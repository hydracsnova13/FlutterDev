import 'package:flutter/material.dart';
import 'basic_navigation_demo.dart';
import 'named_route_demo.dart';
import 'passing_data.dart';
import 'returning_data.dart';

void main() {
  runApp(NavigationTechniquesApp());
}

class NavigationTechniquesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Techniques',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Navigation Techniques'),
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
                  MaterialPageRoute(
                      builder: (context) => BasicNavigationDemo()),
                );
              },
              child: Text('Basic Navigation'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NamedRouteDemoApp()),
                );
              },
              child: Text('Named Routes'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PassingDataDemoApp()),
                );
              },
              child: Text('Passing Data Between Screens'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReturningDataDemoApp()),
                );
              },
              child: Text('Returning Data from Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
