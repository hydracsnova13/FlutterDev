import 'package:flutter/material.dart';

class MediaQueryDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          color: Colors.blueAccent,
          width: screenWidth * 0.8, // 80% of the screen width
          height: screenWidth * 0.4, // 40% of the screen width
          child: Center(
            child: Text(
              'This box is responsive',
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
