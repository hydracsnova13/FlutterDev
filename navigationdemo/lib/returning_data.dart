import 'package:flutter/material.dart';

class ReturningDataDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Returning Data Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen (Returning Data)'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Navigate to SecondScreen and wait for a result
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ),
            );

            // Show result with SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Returned Data: $result")),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen (Returning Data)'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Return data to previous screen
            Navigator.pop(context, 'Hello from Second Screen!');
          },
          child: Text('Return to Home Screen'),
        ),
      ),
    );
  }
}
