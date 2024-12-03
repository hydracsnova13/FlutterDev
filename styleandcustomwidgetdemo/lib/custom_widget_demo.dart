import 'package:flutter/material.dart';

// A reusable custom button widget
class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;

  CustomButton({
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Button color
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}

class CustomWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
              label: 'Custom Button 1',
              onPressed: () {
                print('Button 1 Pressed');
              },
              color: Colors.green,
            ),
            SizedBox(height: 20),
            CustomButton(
              label: 'Custom Button 2',
              onPressed: () {
                print('Button 2 Pressed');
              },
              color: Colors.red,
            ),
            SizedBox(height: 20),
            CustomButton(
              label: 'Custom Button 3',
              onPressed: () {
                print('Button 3 Pressed');
              },
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
