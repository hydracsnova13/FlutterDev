import 'package:flutter/material.dart';
import 'implicit_animation_demo.dart';
import 'explicit_animation_demo.dart';
import 'chained_animation_demo.dart';
import 'curved_animation_demo.dart';

void main() {
  runApp(AnimationFrameworkDemoApp());
}

class AnimationFrameworkDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'animation Framework Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animation Framework'),
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
                      builder: (context) => ImplicitAnimationDemo()),
                );
              },
              child: Text('Implicit Animation'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExplicitAnimationDemo()),
                );
              },
              child: Text('Explicit Animation'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChainedAnimationDemo()),
                );
              },
              child: Text('Chained Animation'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CurvedAnimationDemo()),
                );
              },
              child: Text('Curved Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
